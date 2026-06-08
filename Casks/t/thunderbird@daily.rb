cask "thunderbird@daily" do
  version "153.0a1,2026-06-08-09-44-53"

  language "cs" do
    sha256 "b2cbabfc838b7d5b589582c949e3fd4734cdffcbbd01b2f2520e662c3cb6ce41"
    "cs"
  end
  language "de" do
    sha256 "70eefec7544e2f3e7259a8292447b9fba5918befe7c682d425ba605c388d5299"
    "de"
  end
  language "en-GB" do
    sha256 "98443c231e5706b8881bd108e813ccc7942e217b1b419e94ffc960bc9a6f1669"
    "en-GB"
  end
  language "en", default: true do
    sha256 "900a2e7274e071e362dfa4871a00663ae3fb39a17ae9cde20c187fb6212c88f6"
    "en-US"
  end
  language "fr" do
    sha256 "70eab62379d74f923c5bfb7cfd036e37130b91f2ce96aaaf7b7e5417837c1af1"
    "fr"
  end
  language "gl" do
    sha256 "10756c568e3143e69ddd4f5007db8209c291a8c9a89fa370b4bc9f2965fd5990"
    "gl"
  end
  language "it" do
    sha256 "b78375acd5e2db758bb2802122eb16c0f90963f266e5b74aa91c7602804073d4"
    "it"
  end
  language "ja" do
    sha256 "7cb5996e984ae19c5e7fe2797aa62145b265cf3072bf556a0c83c3f520cf2afb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "58939cef827d5f4d2d55a24aa0741e14619a2c3755cb0bb102ba6acc093ad77e"
    "nl"
  end
  language "pl" do
    sha256 "397ace13fbad6d57940d061e11de21a5a154ab1bd2cddcd5255d446bb1051694"
    "pl"
  end
  language "pt" do
    sha256 "332d78afd9ae6f1f30f4c5385d55807e1888ba62316568c301d5a4a95e9b0fbd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d96f2a37345e7ce45ea65c7f35194e9b1e8ba48ee7b2fdf361e9baae39199a2b"
    "pt-BR"
  end
  language "ru" do
    sha256 "091d789bcf4cc881fe3608b55d5dcb076c12c1769d58a9c85d218ac8f9876e8c"
    "ru"
  end
  language "uk" do
    sha256 "b30813ad388e85ff73fda155ff8cc95002032c08a8ebb669761e1e9455e575c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "1633139c24befdcab155c509f31f2f5c7f350b9c1c41b23e606bffcab4ea8ab4"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b942b42d3785441101258f3703c9dc7e4d49807bf2ce03123654f5f7283646e"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
