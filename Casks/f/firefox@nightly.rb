cask "firefox@nightly" do
  version "140.0a1,2025-05-12-21-36-30"

  language "ca" do
    sha256 "1e753765a4faa885471c8520a62b8153a1b73a297e3c5375a11d9f44075cd711"
    "ca"
  end
  language "cs" do
    sha256 "ab94b89b1f8b758767c1dafd1ac7cfa73f4f436de9b4e48d8d8227f82ff9c565"
    "cs"
  end
  language "de" do
    sha256 "422efb270a4c3376c3f0a2f5982d95bdfaf45dc13a66a8e5e89b92790644c24c"
    "de"
  end
  language "en-CA" do
    sha256 "ee4608e452cdfcb4aab13ef4d8876b1a26834bd461183a9f98b454dc9222b695"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d0bbb46f0e68b2074ab252d372d58546a5017fcd99ea2e50f319a4102448af5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "85ffa67130eaf93dd9683a2b04c60184704d8bbbae6e11c2571a5ac3afbaa3a3"
    "en-US"
  end
  language "es" do
    sha256 "6e5eefed704448d65551cd8afcfe4478952ac4afa7478e08c4eb35e421f75a6f"
    "es-ES"
  end
  language "fr" do
    sha256 "a58d24bf625aec8b5f22de6af6b899f5c270f53a2f5b315f32a12da6828af658"
    "fr"
  end
  language "it" do
    sha256 "6578f6ad99fc39fafabd5c9ee5c7b9c767604e2db72e94128aef1a5e2829d36c"
    "it"
  end
  language "ja" do
    sha256 "8cc3fc607c1754d24121267703fd8c719f87015210bf21fd013885604d404e1b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d8e74888ce6adc21be508f414d8ef0f4b395f2f02c347933d44fa604f88b441d"
    "ko"
  end
  language "nl" do
    sha256 "7b693087971213c1768475089c6482587e20f958835326c1c9a02a9af3e807fc"
    "nl"
  end
  language "pt-BR" do
    sha256 "5e805afe40d902d182da6c1ff87f1a77d02ea98f3a503ee24cb68b7051723c80"
    "pt-BR"
  end
  language "ru" do
    sha256 "e59471c4775d3dc4e7acf2c2f250ed2155efa922267f1219aa41dd2f4792b691"
    "ru"
  end
  language "uk" do
    sha256 "746f6369a301b7b144f0eb3f37a14639f83f991468401012d12934f4fbd712b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "f8e89a3da1d26d45bd3447d98f6931a469ddc99f8db1b80491a731027fe933db"
    "zh-TW"
  end
  language "zh" do
    sha256 "d366ece8e33f5603891f86e33381d70286054e170d8d6c88f17ebdb643cc7bf5"
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
  depends_on macos: ">= :catalina"

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
