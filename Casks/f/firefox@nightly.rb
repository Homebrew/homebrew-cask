cask "firefox@nightly" do
  version "154.0a1,2026-07-16-09-05-21"

  language "ca" do
    sha256 "d1a5257c7b88f0cfe07e181032caf1ea09a19818cc6c38f278fcb19171109eef"
    "ca"
  end
  language "cs" do
    sha256 "f0b04d9199adf718634be3fd0cd750c74a0ccdc0ce6c54982b41edd627d14c30"
    "cs"
  end
  language "de" do
    sha256 "b512afe373d3fc6e27d78e3c10422396dad944586c5503dc0434d2762b41cf7a"
    "de"
  end
  language "en-CA" do
    sha256 "6da82781c9a20a0c66f8b9a3999f9724f89b73a5c6abf8bde075e4f073b218e6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cb002569a582835e57ed2889d4516c487e0dea5f7a19d3e1390bec22c3f4d2d2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9fac46e647753a78afa6d83ea6acceee2d4597a3a1652b554d5b560523c77d75"
    "en-US"
  end
  language "es" do
    sha256 "189ad5539e5722329a1147286bdd45d3e46d6497b44dbd25102c29278864c50b"
    "es-ES"
  end
  language "fr" do
    sha256 "b4d3773c520350a75ce5e5458fb05e59f5f95a0c1aca5458b63322285b356cfe"
    "fr"
  end
  language "it" do
    sha256 "73abced7bf2f96b62d9eddf615751a1b4cce2ebe067826386618440088b67102"
    "it"
  end
  language "ja" do
    sha256 "c76d6780ba7cd227debc73f690e2a91730d449aee88837c474143712bc57b626"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e15903034f3d0d78cc8851dd69cbfbe370f313463e0c2d90fc489e4b01d191c3"
    "ko"
  end
  language "nl" do
    sha256 "2da90097a3462e5e5ba1072977cbadb4f7a86e3a458e4a950eeac40911c03e17"
    "nl"
  end
  language "pt-BR" do
    sha256 "6e413a670e84b57cbc04936fc70266a2a17811172738c7007e5efc3a42dc465d"
    "pt-BR"
  end
  language "ru" do
    sha256 "c2f55599f717841b80857d2c0584a55f7c606f41a0a6f7b0c13cfd8bb484f67f"
    "ru"
  end
  language "uk" do
    sha256 "9b910b1c1c0d3e799a08db90cda549c0b79efc06943bb7ee5bfcb13979f0b21e"
    "uk"
  end
  language "zh-TW" do
    sha256 "e9ea106f525291eeaac29e4f181ff7d2202c36f7f30bba35ccca64bbcb26e97e"
    "zh-TW"
  end
  language "zh" do
    sha256 "293f46b6f95890a23d2305380205254e89f8cd1e4096ca0d68880d1634855c56"
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
