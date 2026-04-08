cask "firefox@nightly" do
  version "151.0a1,2026-04-07-21-54-27"

  language "ca" do
    sha256 "f57ab34e2c91036fe1a14ee3322a5389375ff9eda4d449ef58b354b77b4896b2"
    "ca"
  end
  language "cs" do
    sha256 "2bc2600f1450827ac85829a53aab9437204dc19c7a33427ac367b30621de1712"
    "cs"
  end
  language "de" do
    sha256 "9c8d4cab4135670f60e7e405bd6b812d935af21c5d5346899c5dced6818c13f0"
    "de"
  end
  language "en-CA" do
    sha256 "9e6632c633de6d884a304d9cfabc99f302bd652fdf5c0570c6e21f4afad0cc3f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "760fd7ffdd7746a4dd0dc69128f44eae7862fe6b97f80e21a2d73a3b21f1a1fa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6ea37e57f19d1e083da8d0d1c007b14e47ee0a98cffcf72ca596b55ef8d0d4c"
    "en-US"
  end
  language "es" do
    sha256 "eaa73e5d40bc0518a018b45a9bb480f82eac4942bf2cb059accc861acb8d6348"
    "es-ES"
  end
  language "fr" do
    sha256 "8b57552a98d87127f5df8943dfc8afb1f1ee8c17110e19f3cc8b7263f3912145"
    "fr"
  end
  language "it" do
    sha256 "9ea02402ee9938d02f09dba130d46e9f0c954db7f569e42f96e73ec157f0ccd9"
    "it"
  end
  language "ja" do
    sha256 "14576cc790798f5f397911c8943a460725783088f4e0a0223747fdcd464f7248"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "50d456bd4f69f6cfe816d0ffc7e7e0081aa5e8e9bc1385b219707fed553546a9"
    "ko"
  end
  language "nl" do
    sha256 "a4853f0548e2e69ce9856c019c875b4358c323264a2727c19d1621a9e08bfb80"
    "nl"
  end
  language "pt-BR" do
    sha256 "a8bd9e29ed4675ef54a3aeb561c240fe1df78926407b05ac6f9ade065ce3273b"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0e1c0e37ac64e88d5e7a6cc0f9a3d7f90c97850ef7082bcb1a659b12ac869e5"
    "ru"
  end
  language "uk" do
    sha256 "9d22c11e6c5334a2707c41a1fab2cd034cb0377a7772e0329c3162f20fe77e0b"
    "uk"
  end
  language "zh-TW" do
    sha256 "22824379dd3256757fa90c4815eef8957282c6ae28fd96cd4e5149926ead19f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "1b272d70dc0d49d198fa411da579d235eb49b3107260205f1aadfda1975ff689"
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
