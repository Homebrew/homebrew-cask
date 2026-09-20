cask "firefox@nightly" do
  version "158.0a1,2026-09-19-21-52-17"

  language "ca" do
    sha256 "c497db172065443b418a851b5c15f6300eee04dbff00570d27c3a9033d750ddb"
    "ca"
  end
  language "cs" do
    sha256 "9b6ad3c01633fbdc1000eaec3504c8f6dd10091a382de815c5f806168475e038"
    "cs"
  end
  language "de" do
    sha256 "e7792ae25f4c0c21c1a23a9601029d1e5d08079c42e15028c7586a25a58ca531"
    "de"
  end
  language "en-CA" do
    sha256 "a6037a7a13bb9396173ac521b3621f8e09cd5a4040da221fe2e65760da919a38"
    "en-CA"
  end
  language "en-GB" do
    sha256 "292f54c8a86ef051722d739b62a823d7eb657382a69a52acba17d83005e68e1f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e140befa01c27174f02cdcac45d1a9d4b65cf71afb5d9574d903104ae47b842"
    "en-US"
  end
  language "es" do
    sha256 "d8543604cef79091c62af1298bcd0dd81f619b148a56172a1289f2cb88be6816"
    "es-ES"
  end
  language "fr" do
    sha256 "b9a81b18940048b24f5b770703dcf176b6d7584243e98891586ff9eca0958f85"
    "fr"
  end
  language "it" do
    sha256 "b3e15bade4160d8a33a0e2af256b2647c37681f9c4e65dd738bef0e80c7853e9"
    "it"
  end
  language "ja" do
    sha256 "4d6f2501b4420c2a4e833bb03c7a0db875c5e599f08611b71de926a00510b10c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0f2ba0f6a759f017a1e7e430a1ff58c9cc810aef84135157022835be763a658"
    "ko"
  end
  language "nl" do
    sha256 "99682b3fa83cc2197501cfdb8c7dd884aaebff48756af938880bb577ce27d7e8"
    "nl"
  end
  language "pt-BR" do
    sha256 "1502ee95e3d34f627eb7fce1df5244c8de5efeca66905e7a687cf55dc3d17930"
    "pt-BR"
  end
  language "ru" do
    sha256 "d3d11b360de93935dcdaebb2ce39cb9881de341ea888fe9e987db85a6b7f3a02"
    "ru"
  end
  language "uk" do
    sha256 "42cecf59a3b8a6bbf7584faa46f4725bfe3cff28852c6e3e9db895e197226daa"
    "uk"
  end
  language "zh-TW" do
    sha256 "3c84f556fa53e350e3a63fe22cccae0ce4b98b84ed5adc4b1514eff1d1b968f8"
    "zh-TW"
  end
  language "zh" do
    sha256 "d970f0631688ed68dc2b2bcd4426833357f0c1551018c60534a9026dbd72dc9c"
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
