cask "thunderbird@daily" do
  version "152.0a1,2026-05-09-09-39-21"

  language "cs" do
    sha256 "de6e3a1aea657197aeb809720a297d0005a25b8bb4fb4b735dabf59dfdfbf08b"
    "cs"
  end
  language "de" do
    sha256 "a027366c8faa64a846631f8baba3e1bb1c9a11a8badba966a8cad48d964393e8"
    "de"
  end
  language "en-GB" do
    sha256 "107925ca9ef00b078d155769b94d3d1b4515be90a7478235df396f1546fb5f47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "055aa1bb899f54f9b78a3f7b4f1056fc464bce4976c700656ca7e3328dd38d91"
    "en-US"
  end
  language "fr" do
    sha256 "00e3b655ed6a0b78b35b08bfdb7fca794df29b9e9eafbc88bc5be452ba12405f"
    "fr"
  end
  language "gl" do
    sha256 "1b11942208eb5b1683630a29726921b690de2858f95f9d7c2f7a336712ed35ca"
    "gl"
  end
  language "it" do
    sha256 "ffbcc6b45afe4c0bbfb1994d29477aff5492380712f5d857a80a1a83b8ddc1ba"
    "it"
  end
  language "ja" do
    sha256 "5af9fbf2d0b0decc602f4ea68a938f12b78e91a2988bf950e64fbe630dba3904"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "54629dbfd389340eaaeb2865f6c65e62c3411e321a9b55c093857f6307cae8a2"
    "nl"
  end
  language "pl" do
    sha256 "75020b847436b93b9851af9ad27c8632a9ecfc01bfd6521d0ebf60756918ed87"
    "pl"
  end
  language "pt" do
    sha256 "ec6d39bad0085eedc7f46f0ca0a4090335c12795ff63c7f8a0233aade8de6293"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2ea67edf23655b29a4723e67a10c3ae118773e932121a996d528ebd7da8c1ac9"
    "pt-BR"
  end
  language "ru" do
    sha256 "965c4d44df5f0cd9a52dd9daffb1169c935d6b34eec12175268a26c4831d135b"
    "ru"
  end
  language "uk" do
    sha256 "c9fb724f7a029785fbb2a41c04bd1775d74cfce9f5a5318e1f051110807f21ab"
    "uk"
  end
  language "zh-TW" do
    sha256 "890e896365758ab3f0da932aed93680c398186eafe6f974a7e273413c53c4c28"
    "zh-TW"
  end
  language "zh" do
    sha256 "99dd500a9c273fd74e1da1fa2772ad6a0ec2849570c55850962c1dd7cc3d809f"
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
