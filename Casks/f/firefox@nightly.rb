cask "firefox@nightly" do
  version "149.0a1,2026-02-08-20-03-20"

  language "ca" do
    sha256 "d555877295e4705218cc038c87ded64daf61521c52d379e04df8e4b119310438"
    "ca"
  end
  language "cs" do
    sha256 "5a10f62e4e8efe9827949d7368ff7739d0b633122890b641c2d981ed71b85292"
    "cs"
  end
  language "de" do
    sha256 "4a20d9a983ecad258b5338ecdf79f807698f41e8c9db031256b35081503d08be"
    "de"
  end
  language "en-CA" do
    sha256 "4351e81440633574b3209c12662f3bfbfd96cf205c197d653ec33c24d18a1232"
    "en-CA"
  end
  language "en-GB" do
    sha256 "38efaa6fb65de8ccb1800ab214cc53aa79ac4dfc1824d2c682dc57b922944a6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e07a08e766a3794c541e4eeaf7cefbe790646b7faffb5deef44df5f59737718d"
    "en-US"
  end
  language "es" do
    sha256 "2255268557976837c03a4159962d77011c25e457092201f45d799214b369c393"
    "es-ES"
  end
  language "fr" do
    sha256 "dbf2d9547477bbda452009193860a1756a6d805c3530b310d869e210c1711de3"
    "fr"
  end
  language "it" do
    sha256 "0e8954b42030a531935e704900e303fbea708bc574e8d583c09c3fb6f311167b"
    "it"
  end
  language "ja" do
    sha256 "1bcb2172a8b000e147c0723e84b492d798ce4a68205a75cf858e67e03e0e1d68"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fbc0618bfcb9a63114d2f9d7cee817ef053c4719b554d97cc401c3c93b57b864"
    "ko"
  end
  language "nl" do
    sha256 "260a06959945d02255678b762294a607c8d2de525885fc7ec7a81bd57e989660"
    "nl"
  end
  language "pt-BR" do
    sha256 "fb2c4c55c335ba6ba70cf647f783100fb279e952908ad9e28278bcd4219c0253"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e37257204f18cec1e6b4ecd332d1bb9b38cdaebedf8297c3910e7de720d7def"
    "ru"
  end
  language "uk" do
    sha256 "8cf897709be13c6b694b82cf1858870da3eb3ee8c2349a259338f8eb7ca83f1d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5fa0f8021b9086a9512bd2bab5d04609fddca8caf152fca4a75313c3f0cbd6ae"
    "zh-TW"
  end
  language "zh" do
    sha256 "90c0eace0b88b7a7d02510d8b711f8bbc7aaedfb0d6d7bd7bcb4be5a2e38198b"
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
