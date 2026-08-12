cask "thunderbird@daily" do
  version "155.0a1,2026-08-12-09-45-29"

  language "cs" do
    sha256 "5d8976f3323d50583604e0f3adee2603f86d8673fd4836e73f51d9535e7f6263"
    "cs"
  end
  language "de" do
    sha256 "90d757d1281838177ad819382f8c76d3a35307e476c9f2e2e2cb5a3a4353a932"
    "de"
  end
  language "en-GB" do
    sha256 "49f23d63b55cc7515752320a4bd35cd53f8f9046037ae33180ba90ef79e7daa9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3e1db34949f29aaa79aa03d704f07c1f4c8ca020bb7b2a1c55164544ed02a04"
    "en-US"
  end
  language "fr" do
    sha256 "eea032ec4258e584f677bd35212d27a7bf6c2d9ac0051a9b3801407d4fe69232"
    "fr"
  end
  language "gl" do
    sha256 "ded67b3b782f2edfc174745ae66dcbcc74b0ff0207358b38eba401992fbf1f41"
    "gl"
  end
  language "it" do
    sha256 "c2cf426e0b6129ad5b523232a5360b306bb40290513992e5f15be0a341cd885d"
    "it"
  end
  language "ja" do
    sha256 "e63b01ce2a0287c7486966109081ca483f53f9f78ddfb584a1f45a57505b8140"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "db29449febcccf0a82153d5fdac7bb46c1bb3b240e221b8794517b25f4f0c700"
    "nl"
  end
  language "pl" do
    sha256 "33a80c9fc0534dcd997195bb1377d3e62c07d591ce66548be742733bc3c60018"
    "pl"
  end
  language "pt" do
    sha256 "1c7a1ee8847a062f3aafe434470e475ed4e20b3d7f08393b1a8fb46b6b41b50c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "50327fdfbea3a6cfd3a027ea6722c5ac4f953cfef74c29eff3b91babe6e31f00"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b808b54e91e566e214aba648da48988f25d2cc1497aacd45e6ed8bedaf54c89"
    "ru"
  end
  language "uk" do
    sha256 "08594468da04f871c7ff8028573eac693ddd158f8f34199946c10517e059efac"
    "uk"
  end
  language "zh-TW" do
    sha256 "190267a7766b7e1d63f8c1c5af397619a88c88f9fb3916548d3c49ea5988bc2b"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0ee60dbb0aa7027d8efea3a8dd2f4a8d8871def3933de4cffe01806a80a0610"
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
