cask "firefox@nightly" do
  version "161.0a1,2026-11-02-09-39-42"

  language "ca" do
    sha256 "90763bdaaf0de227792365f22b59c0a000526baf45daacdcd7e5460f982431e3"
    "ca"
  end
  language "cs" do
    sha256 "4f03fefe0b1f55cf870e8f94763cbd852223ab084cddb83c9f95a026ae059224"
    "cs"
  end
  language "de" do
    sha256 "1f660fbd30da4b5055b324496546b0f09bb11c8d4f77ece6866df02acb15c337"
    "de"
  end
  language "en-CA" do
    sha256 "1a4aecfd050e6727b897152927cf4dee8175a27ef3d52d618554da5778b012fb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7603e30e6c7c002e8a60ca27c965c3d963c4a4f33ad9ffcd3f23de6b3d9a61f8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a11b85a99b27618cc4e3a405a596f7f669aa50ee3a7ec01f95bff650429952f1"
    "en-US"
  end
  language "es" do
    sha256 "be1d1152005bff47174599aa11b420a819a3fc3bbcb6dbf91e3fff267a3e327c"
    "es-ES"
  end
  language "fr" do
    sha256 "2bc3d1576c3db3f3200c8839fe1aa531be06ed94e2b15236d974b7dd17967e3b"
    "fr"
  end
  language "it" do
    sha256 "77818232e517a88c5da34451658942fcf2c816ab665e8faa9a862b230a26e0b0"
    "it"
  end
  language "ja" do
    sha256 "8163d943febbad783d53af009140c90d5b31726e62d9961371a981396c904a1a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0cb070fbc57c2b6da4171e09bf4d421d5457cab336bdb3a9deb428421db62dbc"
    "ko"
  end
  language "nl" do
    sha256 "c6c95fd68e01524c66315c6c98059c21fc943f5db0a6ac51c6f4852127afde07"
    "nl"
  end
  language "pt-BR" do
    sha256 "1d4945a5f739df1a53e4dff1d62141ccedeca058554c4539942521bcd52b79de"
    "pt-BR"
  end
  language "ru" do
    sha256 "bced979c49b74fce7f7fe18f559fa865e1c2441e43eaae5b6fce3a77b2bb4188"
    "ru"
  end
  language "uk" do
    sha256 "cc4ebcbca7c81320d16da8f09eb41a5371177be47bd8295dca0784547a62ed97"
    "uk"
  end
  language "zh-TW" do
    sha256 "e240cca7d41b02c1a67053287c6105af1359d8295cb2ed71a0933197c1b34b23"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d73570ef51081fe9bad2ac11d3fdc0b8b721fe347a954d724edd367fac4ea78"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
