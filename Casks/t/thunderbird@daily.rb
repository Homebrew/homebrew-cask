cask "thunderbird@daily" do
  version "157.0a1,2026-09-02-09-14-25"

  language "cs" do
    sha256 "f96eb6bb87d274bedc8f3a7b35fe9280797220fbbb3c5edda4f630550552c739"
    "cs"
  end
  language "de" do
    sha256 "79ca9da6604c593a4eb2f636f169549f5c35cc3debac9b29ca0c1212aac03c2d"
    "de"
  end
  language "en-GB" do
    sha256 "3b99f7baba96af1a26d2994d3c0380d96583195ce73e7cbecfd369f1410d102b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c0e655e65510c5ead37f79f6179ec0c8e3ed2352db27245bd8508fdfeec8d9e"
    "en-US"
  end
  language "fr" do
    sha256 "1391b0612dc0d82cfee29ee2055a7567d69421183dbb45af9c9ff3a37d15b3aa"
    "fr"
  end
  language "gl" do
    sha256 "4fa9830cc59a517f4ef1025342340672532a4501cbea4548b781147bc8f5b444"
    "gl"
  end
  language "it" do
    sha256 "e351979bfc6f10f9602b4cd7727b0eb1f83a04410a2c0b2241a87f0295b4c6c4"
    "it"
  end
  language "ja" do
    sha256 "d00671be66df2909b76fe9ac3284f19e801933c5474ebfb3085798321640a633"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8bcd5c1e0850bb930a58cd941b563741467992d50ba12c33fefb70bc5dffc287"
    "nl"
  end
  language "pl" do
    sha256 "96501ab6ffe6138feff8e987db5028bb83a9aa85fc458ebfba31c0b809059546"
    "pl"
  end
  language "pt" do
    sha256 "0a0b81f7045f6656423baa28216fde802fb68384d5fe13a17fdd34d94f0be290"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "374bbf4c7d9487b792bddec093e2d7debfddda96c12ea7b18c3d137b63768b76"
    "pt-BR"
  end
  language "ru" do
    sha256 "845c67a73d50e7480f461574370237ca03217e0c73a887641ba41b7193c97271"
    "ru"
  end
  language "uk" do
    sha256 "0a8ba9f016bd8bc09fd5f84f87b11e8273bb9daf642929b364e13d341f8c1bc9"
    "uk"
  end
  language "zh-TW" do
    sha256 "439d0f2c657df63e4fffc4d0a3e9dc11481446891ed8b2f08cf0cf5651643803"
    "zh-TW"
  end
  language "zh" do
    sha256 "38a9893ab4f0090aa03fabeef52bd7375468041fac7366a6f420d3864f886099"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
