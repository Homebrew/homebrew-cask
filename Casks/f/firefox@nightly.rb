cask "firefox@nightly" do
  version "147.0a1,2025-11-11-09-45-32"

  language "ca" do
    sha256 "46a2f7c06409087d79d365111dab37c942c5dbde77683ecc591ad82c29e76c16"
    "ca"
  end
  language "cs" do
    sha256 "92ac49b35b77ea68117920d79e7def647f08f3a8979ef25575ffbbd0fe381a4a"
    "cs"
  end
  language "de" do
    sha256 "17496ed49b0ca0cd4e65cc48ee3986c60d38ad912d93b45612f5b0251b6a0587"
    "de"
  end
  language "en-CA" do
    sha256 "f0fcdef3e89994ba85ff743434d32f0668ada1eddce153fe94db1b0562c9c489"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0a6da3071bca941f43029d2e42fc06dd8dab0eaef0353fcf64495a3cef599cd1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29a7be59c9e9cd095cb8f65f55e085f49945540e2ce683bdb7da24c2eba5903c"
    "en-US"
  end
  language "es" do
    sha256 "77a61bb8592ad5b2970d84a1e4851cea1a0fce7656487addb49568b741a32cf9"
    "es-ES"
  end
  language "fr" do
    sha256 "7fbcc83e8b2dd99179f45b6534910a88bdc136716c7adfa74cf5465775130ec3"
    "fr"
  end
  language "it" do
    sha256 "889b633febcfc09bf689cceab0bb5acec0cc4bab87e883dc2020458885b4ee23"
    "it"
  end
  language "ja" do
    sha256 "f5675920179d99065d7d111f686c4e6f8ee12beaf4aa007aee3bb61dc1b97085"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "557b2e6463d76d44899518b3656329ba96c9bf9d98c528ea19245578188b8e87"
    "ko"
  end
  language "nl" do
    sha256 "77ef6ebb633c5daa889cee2503d913e38aaa6b46987bd21ed36edbe7f808a132"
    "nl"
  end
  language "pt-BR" do
    sha256 "430598ec0be1f28648d3f08ff1d3418858827bd193e00e912a84bb7a00e2cf63"
    "pt-BR"
  end
  language "ru" do
    sha256 "e6024496b9b48ea55d2caceb8197b9328f5cbcf92ce822ee0cf1d33533aecf39"
    "ru"
  end
  language "uk" do
    sha256 "d86af2382e4d811282905387f3534fd218e19c830017723697e5ef37f765a319"
    "uk"
  end
  language "zh-TW" do
    sha256 "7e98cea2ac6d59ab6ffb4b6f4943a08e79bacc4f07b0b37bbb8c88645aa4af55"
    "zh-TW"
  end
  language "zh" do
    sha256 "97dcaae0436eff841e186a05e13a1254d18c4a96b8868e6b0311b9be0dce2b76"
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
