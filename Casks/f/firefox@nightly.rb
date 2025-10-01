cask "firefox@nightly" do
  version "145.0a1,2025-09-30-16-29-01"

  language "ca" do
    sha256 "b3adc6260aa3deb6616f16ca9d008df983907a5251bd078d82dbb5d30fb97181"
    "ca"
  end
  language "cs" do
    sha256 "efaffcb475c89ebaa64f7ae98b7850737609833f2b99ca2f9c0be5dc2f5c93fb"
    "cs"
  end
  language "de" do
    sha256 "a69625e300479c0af2f07d8476655e8f4ba3063e57eb98260b04d7d1dea6856d"
    "de"
  end
  language "en-CA" do
    sha256 "00f15265fb5afd956c23efb42179afb58a8bfe5b9af85fff24a2f0c3696cd3bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02e452db2a22da4f940115597cf03528e58d89ba724e634c343ab6afe1fb01e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63cb36ddb573fab29a98546a1084020cb4515e52373dcdbb6dd84a334a0bc4ee"
    "en-US"
  end
  language "es" do
    sha256 "7ee1c104752a011cd36797627a5339df9ed930410a79b4d677f88f662103b90f"
    "es-ES"
  end
  language "fr" do
    sha256 "24f683c37de12f7cb2875af4f29d9c4260057786dd49ae756ad749f8ab2720d4"
    "fr"
  end
  language "it" do
    sha256 "613832f99dd31a4fc520a3d44d050ef3c47ae32449335fb192a5270c93275559"
    "it"
  end
  language "ja" do
    sha256 "c9e4d7ff25503425a728b2f990b8374837cf7c8f8bf8835bb9a8d7db9aca2c2f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fcc5fe3882a938f0e74f47d21ca5136f8557ebf687f883ebf25a14859f1fd3c5"
    "ko"
  end
  language "nl" do
    sha256 "63d9be816864e68e3026f38336661726fadffb89929ec3fcd5333d178689c38d"
    "nl"
  end
  language "pt-BR" do
    sha256 "eaf5644e6da3b71bda24ad25e6036e9f4dff614c7e8fdf418c91a90fe5071be9"
    "pt-BR"
  end
  language "ru" do
    sha256 "4306df077b6f12497c82ec3a55328d7d29c27c525c6e997f3d655cb8d83ac4ab"
    "ru"
  end
  language "uk" do
    sha256 "73d09a63a4de5d9e5548ed97fc37ce4ff1a67f5b1b4c7f3bea4f54d48c17d2d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "3882bbfc31e0e8df8f37312e2ac7e586c1225523a94f77e06821b2574ec888ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "c03c0d16acd4a775aa2c1c80c3fb320f5bedfd73e13667ed1832c3e531619c83"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
