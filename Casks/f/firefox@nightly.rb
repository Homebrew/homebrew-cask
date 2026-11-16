cask "firefox@nightly" do
  version "162.0a1,2026-11-16-09-45-10"

  language "ca" do
    sha256 "83b44f92f108d6d462fe5effc13d9e1d49a5298004dd46515ff77af246420e94"
    "ca"
  end
  language "cs" do
    sha256 "a53607482f26ae76c86db180f3ea4f297efb7749d41f2e97778ac2ba596b5e86"
    "cs"
  end
  language "de" do
    sha256 "13f6a8775c8cbafb973c08f805597587cc494505afb1d596b3e1cc859dc24a63"
    "de"
  end
  language "en-CA" do
    sha256 "a53d82a987601ebb9767776f618dede3ac495b6aee652d536efdf842f0a63174"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c2972eda14f9377c4eb3ca8d22522644676ac33bf5571510b1c3f3c27f1a654"
    "en-GB"
  end
  language "en", default: true do
    sha256 "91e3ccfc23b4a7d98af7d032b2533cc651323f8ea3d7366e97a5a7ac13e7e0f5"
    "en-US"
  end
  language "es" do
    sha256 "b6db79705a75907dc67dffca4a2faac52b0af1f6f144625af01189a2fbce2686"
    "es-ES"
  end
  language "fr" do
    sha256 "cbb8b786a595d3393cafda140d9df61ea3ce4ed2b4578c264e88fed1d9b67643"
    "fr"
  end
  language "it" do
    sha256 "5c6d1ef13abdb7cdd2bd27a113c028b59f4ef82af9df654c75c409d39caee0a3"
    "it"
  end
  language "ja" do
    sha256 "9977a430e8a63dae1cbad465777e7dceaa527b6f3be529d8e490686807246e4a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ae9615324dcf967f83eaec66bed9d4de81cd608e6cdd51b1986b66ac9262b649"
    "ko"
  end
  language "nl" do
    sha256 "9889428c24d3ff272541cd0a282327515fc2ebfb6e73236acae49cc0f456e38b"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d90dbd482fb9ba9beb8ca14f26598d36def4a51dfdae22b4579ba082472b43c"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba7d70376738da3f03eb3f12d6f2bd15a911bbc34532cb04cb90f1ef6cb0415c"
    "ru"
  end
  language "uk" do
    sha256 "f45078bcd1909978066cb6e9dd86b01976ec400e744f32fac459303b0a9f232f"
    "uk"
  end
  language "zh-TW" do
    sha256 "a38a214291a0527e4045db0967e0f5e9d98341e79506f5764a79f97fa90ec508"
    "zh-TW"
  end
  language "zh" do
    sha256 "31b2426a1f544810a1f92805c589610066d55b0b9b19765ea579689b55259013"
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
