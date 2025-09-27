cask "firefox@nightly" do
  version "145.0a1,2025-09-26-20-47-08"

  language "ca" do
    sha256 "4278228d33fc18c4ddd50ace22b8609d9c49cff607ff7d2367f90f9ae81fadfa"
    "ca"
  end
  language "cs" do
    sha256 "3132a8b00b174630864e4b147e2156a5a3b6a42c82169bd263b0a8b3041ee9b5"
    "cs"
  end
  language "de" do
    sha256 "3e3281866242cb3152a926599ede440e9509930ccd59183404dbfecf176ec200"
    "de"
  end
  language "en-CA" do
    sha256 "f007087ea6ef06d6779db9cc510cfed56945f53e1b6e87912451b1ef8c808434"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06bdd67ca5a252a06e764e2bccf4157067eddb2323b60225842e048e27da584a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e960e2eb577b59126a55413e4fe12b56ab07577ccafbd5f81427b38d1f798af"
    "en-US"
  end
  language "es" do
    sha256 "3687fa505f73cd8750b97ee70091c0d58c9e355a4d6a3f0c7e9354b7ce2576a1"
    "es-ES"
  end
  language "fr" do
    sha256 "635bc5153960d701b079bca65735da526731e76009449bda4a024e046f8f9b67"
    "fr"
  end
  language "it" do
    sha256 "44cc10f3c15c528169ca1598ba02452bf2bff50eb0b7726606cef5d031b123ad"
    "it"
  end
  language "ja" do
    sha256 "64809c7255b58baabebd8240e2442e6ce47b42e78cf0bf7c8ffd3408f2ca7539"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1f21c841e07e105a7fdad7a43d047e103b47749bbc9ee6c860ad93adced91702"
    "ko"
  end
  language "nl" do
    sha256 "99088a65558fada3be5bbfd084954588379d9249aa83f9298dddce14fc2b0660"
    "nl"
  end
  language "pt-BR" do
    sha256 "2fd3f200e086b4a10c41143cc165e0fb3aafdce0adc1175c0bfc888d28fc19c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "ead385104c79cc30ea996f12e90ec7b47e7a235e7b2947596a37492fef15087e"
    "ru"
  end
  language "uk" do
    sha256 "d0b25d21d3f6d69ddf62dc24bbf10261ac9dd25b614d1bc2edfd37646db78555"
    "uk"
  end
  language "zh-TW" do
    sha256 "6cd8a13c3cee2d0629295090fcb03b72a8cbd69866abe2134585de37b13ec7fe"
    "zh-TW"
  end
  language "zh" do
    sha256 "d22eba5baaeb0b4815f40fedd611ee00da824d78f180e7a34e7a16189aa6a7ec"
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
