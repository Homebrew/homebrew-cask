cask "firefox@nightly" do
  version "152.0a1,2026-04-23-08-28-23"

  language "ca" do
    sha256 "50d8f95ee61d7a6ca8b9079fd6119e3e7b496cd6599e5dfcb893df239e09590f"
    "ca"
  end
  language "cs" do
    sha256 "e0209b5d8879d380829e99523a60e934e9c78206ebb77b47aa26b2fa4cf7081d"
    "cs"
  end
  language "de" do
    sha256 "dfbbc70246aa802b074bb65fa3f5f27e7ea14c47a346975f9c57090ee82e6721"
    "de"
  end
  language "en-CA" do
    sha256 "249f8dfde2032d1c56faaa5b4424ab270471480ab187fdd25c9ff1a44b791b4e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "828ee603807cfd886e4cb7628b050ff37ea10bf102f575a142657e4546f66638"
    "en-GB"
  end
  language "en", default: true do
    sha256 "22b67bb030009e1a4410de8110004fc5643c714731a0d5afae6d3e82846be8e3"
    "en-US"
  end
  language "es" do
    sha256 "694022b9aac423b0a11de4da1a63efddb13b45c070ce93d8daa88f52222be148"
    "es-ES"
  end
  language "fr" do
    sha256 "37adefe5433d0ed3af953c533c5eba788a5fd79ce911b49138107712e10edfb7"
    "fr"
  end
  language "it" do
    sha256 "ce05f80e333ff3960d39ef7c0e5edafd462e9729a1c7affbd1e6f7a1e0069a94"
    "it"
  end
  language "ja" do
    sha256 "0786f80c058807bb851609594d11ee948f9115c8cdce78c306accb4f33511cf5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "04d67aafaf303025795d148b028ab2055d1ddaf167ec05d146ef8f7193732924"
    "ko"
  end
  language "nl" do
    sha256 "ec53f5a342b2a91a4384e3f0300704fe919bfba27638d8f417b1fdc22b1d228a"
    "nl"
  end
  language "pt-BR" do
    sha256 "3c84f46e71ff131a7d0694a7b5ba65c490ee9043285c6887374eb78883925cb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "37944804245adb95858f0e57ae9585fdab5898a701619febc993662af50ec73a"
    "ru"
  end
  language "uk" do
    sha256 "0d8c83711409c9cf6002d371d1b1811ab322d76ec6fb9f061b82c08209eee535"
    "uk"
  end
  language "zh-TW" do
    sha256 "f378863b6bd074bc8ce15d7dddb3815535674a134501dff243bab5b9f9902c76"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ec2b30196927a3612cbba1079afe12693a99cae190e0b457028acb942a814fd"
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
