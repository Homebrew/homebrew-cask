cask "firefox@nightly" do
  version "154.0a1,2026-06-30-21-53-21"

  language "ca" do
    sha256 "e090575f87de82b124cb151db2d352d7e0cb438e6b4d0372a0051e6f860b076f"
    "ca"
  end
  language "cs" do
    sha256 "8b46b921be3134a2075f7d81652ddf142c72394692c7f7d35a0890e4e85d79c5"
    "cs"
  end
  language "de" do
    sha256 "3ce483db72da23b72ab77360db21d1c125015627d97e180f0dc0e31c57e6c2d4"
    "de"
  end
  language "en-CA" do
    sha256 "d318b3ddc155cf35ed306e4415d928f6848f35b0c3e2fe758a32e646d98347f2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "be95ab1b083cbc0685d25e29a6d9dd78d769fc3d73a0a22375931a8863cf064e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9668f3e31db13f48583392fcd6d2a75328aab407d1b524ff6172af420dd1870"
    "en-US"
  end
  language "es" do
    sha256 "0b2e9d48836e84c34d46830826bd82508e71c46d37420e7f9992d28d80d2adfe"
    "es-ES"
  end
  language "fr" do
    sha256 "1bac1945b725a101e197a742dae21424d0167e8f98bd661292feb9296613429b"
    "fr"
  end
  language "it" do
    sha256 "772516a80bc02fb5abb777b1d7ecbb4f2b55d23e2ec135698a170784f576b14f"
    "it"
  end
  language "ja" do
    sha256 "db48c54b3ca84f6d68043872132bf98bbda8bc4bc05214a6f22010ec153e87b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2ea614bb63e36883114762167a7cf27a018ec05ac3d4c758684695898616616e"
    "ko"
  end
  language "nl" do
    sha256 "8a2feaad06d79bdff194f2dd57d668cd3c6718890ec5ce07f3a0729ab69653ed"
    "nl"
  end
  language "pt-BR" do
    sha256 "e65a8095082c146a619dc98bce5f3d6224aa4b2fdb123391dd39b4dc29724c80"
    "pt-BR"
  end
  language "ru" do
    sha256 "79a19f560b347ec895ad443df6029471f8af4bd5e1f2328205ef45610c8e42b7"
    "ru"
  end
  language "uk" do
    sha256 "bfa461e0aa27f5a4c38ffd7f289d689155b0e6944316e32bc4588ec1f09341c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "f0fe7d366ac065a357bfa49730c09f1ac8f86af1614925861c254090b31686ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "010e833270c364fee4cb014d22b0124e7c28b510aa7783fa3ce0a76b1f4c0e09"
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
  depends_on :macos

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
