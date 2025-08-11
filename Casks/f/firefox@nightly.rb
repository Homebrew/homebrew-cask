cask "firefox@nightly" do
  version "143.0a1,2025-08-10-21-06-08"

  language "ca" do
    sha256 "26b0904a02ba05a6592659f3504424d3ae2b4a8054c12601cc646ad5edf4fe44"
    "ca"
  end
  language "cs" do
    sha256 "efbc6a044c216ed5de084513836490bcb395d6880b1fcd2c9baf9bfd0f9500ce"
    "cs"
  end
  language "de" do
    sha256 "20cd26f6d8a29471908e4eefb479b7d94e107c8d25808a18158ae79c6e8b3186"
    "de"
  end
  language "en-CA" do
    sha256 "a06aea46d4d85dee74b499327f71e43394469ff9843937e3d42dea71b34d6a99"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2e29183ac45841f43642be2a6d9cfbdb7ba4c76a8b6f68b3b20d99037bc903c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7752a78dc7f4a053e56527055b61eeda39b6abccb98ed2b9a4ba553d748a7f77"
    "en-US"
  end
  language "es" do
    sha256 "406815f5ffb327e57322eebc508b402b8c36b44c1c47d8cf05e12e7d0b2ec6aa"
    "es-ES"
  end
  language "fr" do
    sha256 "939b8e0449bdc4cebb542c16196631afae4408a570006cc0afd7020a60802fe6"
    "fr"
  end
  language "it" do
    sha256 "4403d086bfb7867903265944c16d3a9cd335d3acb9440c52cf5cda5d433bde16"
    "it"
  end
  language "ja" do
    sha256 "1f5b999903c6b7bd427eaa9faddcc03e2f3b59a247caaa352395931da0a27c31"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c5632a924c8a32db49c83a07415fdd1e5d78b460540d12d8d78c5f4653c0c77"
    "ko"
  end
  language "nl" do
    sha256 "f71d664555dbbd58900e8d8c27478cf3a94938a505d8fd304ae677b96925f755"
    "nl"
  end
  language "pt-BR" do
    sha256 "8506f024f483d9c2335386a7ba6cc80b9e1cd2c79ecfd9f62e2a5477bd18aa6c"
    "pt-BR"
  end
  language "ru" do
    sha256 "9dc1b214fd5786a565f074143b114505f3e5cadac428bb4944c45f11e5bb6c4a"
    "ru"
  end
  language "uk" do
    sha256 "5e17291b4cc348dd41035ddedcb207e325b1aefc3a68ac8109e4e304063327d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "6e5f594a0a40c8d71c937f8933e339fe36ecb464102af6db5e67565947b0f224"
    "zh-TW"
  end
  language "zh" do
    sha256 "0592916805645f0c9efd0815113d9e70f545aef787a954a127710742c8cdb8de"
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
