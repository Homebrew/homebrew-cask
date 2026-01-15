cask "firefox@nightly" do
  version "149.0a1,2026-01-15-09-59-39"

  language "ca" do
    sha256 "4baa5be75ab6d34d823425b08107241f496c788625ee0d621410e472b7896b43"
    "ca"
  end
  language "cs" do
    sha256 "6a192f4d9da05724734dbe48760530fae37cdd96e47aaeb2c67b0424de65ffb1"
    "cs"
  end
  language "de" do
    sha256 "ff2841999e2762ec858cdd2b6e7277c83f6dca963e444a3db708638bfab85df5"
    "de"
  end
  language "en-CA" do
    sha256 "97bef5a135f5ac287d5343a9eb4a4b1debb53984977997a931e6f7f639943784"
    "en-CA"
  end
  language "en-GB" do
    sha256 "861aa5f1c23c19b010f4d8b36fa13fab7fbb0413359705e0621bc8d95bc27ef3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c35ad639fce6ed223ef6c04880ab4f69b478f7ca7711f933f7edf091b1b99789"
    "en-US"
  end
  language "es" do
    sha256 "90976da691ddd254e0421b0ae6cf4dacd0f0dbe26d5202b3d2f45eb71b5bf457"
    "es-ES"
  end
  language "fr" do
    sha256 "4f9b2acc6a4ac31764075683ee2a5dbd806ea4b1f9458bef30fbdc2fe2297a6a"
    "fr"
  end
  language "it" do
    sha256 "fe1cb5efec1fe4c37537ef6d2d0acd5521e372ad4e206b82a5c5c34ca879e486"
    "it"
  end
  language "ja" do
    sha256 "d1b75cc864a067dad80cb4aaf6c5ca782afaaf40264bd5df3ae78c81b7167540"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0e564d1ec80b45c53e62e30c912d95caa9370ced826bf75b1ff27be40a63e510"
    "ko"
  end
  language "nl" do
    sha256 "5f37e85ea614c8739eb29c870f3c12a2ae441ba5abcc9bc9ccf3c7ba3f3d944a"
    "nl"
  end
  language "pt-BR" do
    sha256 "bf34c021f48aa6796aacd93d7eec929c93ca7e1f7131e6b009ce226e6a7b6576"
    "pt-BR"
  end
  language "ru" do
    sha256 "e37be0f33bd2cfabfb80eb6e15f25249a582634bc5e9cecdc2d16028cf2ce4f3"
    "ru"
  end
  language "uk" do
    sha256 "d8ca5bb0ba0ff81415423d6f85970a8efb34d2b2d05eb0682fec53189430a515"
    "uk"
  end
  language "zh-TW" do
    sha256 "c342cbb9c86cecd07425867c1332eabb393d9b9eb345427a70c345db9b89b1e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "5bd15a6eac986fdc907604d38e9add70aab76eaeb2dce50b67ff7380cb84c9dd"
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
