cask "firefox@nightly" do
  version "154.0a1,2026-07-03-21-41-04"

  language "ca" do
    sha256 "28f8db3cb1efdfa9bbb7f61c2444638f0f9d5755879732a5e0f2e5972de0d490"
    "ca"
  end
  language "cs" do
    sha256 "db0685a399649f3f44cfc476fb4f661e44d3de80960e1cec9d751e59946255d7"
    "cs"
  end
  language "de" do
    sha256 "bfa9f2b77344c94a5a9fc16682c57c3519b69947892c298d994db058bd35d103"
    "de"
  end
  language "en-CA" do
    sha256 "7609031b4843a8fe18edcb812bb5bbea9c7e33d38b508b06c29d719da83cbc57"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b1ff6a47a3945f8acf508596588fe3dd7b2d6ab8819f0b786c42e95dcbe4045"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f2c54c5999d39d1f317e27ab46abaaa554544c15be030a75af45d8dc746e9b17"
    "en-US"
  end
  language "es" do
    sha256 "d7ba8c19f776c64a7272afac89714d62055bf211ce9717347f2d39afb6cbd5ed"
    "es-ES"
  end
  language "fr" do
    sha256 "657e8d7db8ab495728982a45b4ac156c2c8cdfe9e573ed92680ed225e8bb6e24"
    "fr"
  end
  language "it" do
    sha256 "ec8f670cddfe33285aad5cdbae58b05be0f7f24ff00ceac8bdadffa6ee6fe8f3"
    "it"
  end
  language "ja" do
    sha256 "f63d618a7f9a3a94f59b6c242317fdacc1ef47b3b405dc73a221ce39c61737cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "04cd7df1cf285baf6fbda8db8d33bdcbbfda4baaf64e7970593bd536ae779bac"
    "ko"
  end
  language "nl" do
    sha256 "0fbc42786f5d2e9d12955e2a898c8b4cc1b9399fdf26e5d6528686a4c5d3a665"
    "nl"
  end
  language "pt-BR" do
    sha256 "92ff94a13d42fd870706a187e1c30bacabdcfc80fc17a7128f6323eb8159cfba"
    "pt-BR"
  end
  language "ru" do
    sha256 "7dc3f87c21d7f8ca5116cfd5149eae57473970f8d52d4608971fc653c7521248"
    "ru"
  end
  language "uk" do
    sha256 "fe09194ee25d025aef2020ccf33916ea712fa4cc4b06c77e7326b9194cd5b100"
    "uk"
  end
  language "zh-TW" do
    sha256 "397055e8654e1783e49bdeffc4c9a0fe085ea9edd817075dff75eb2224557e8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fffaf7347502cd2e90debf59b998a4a90ced5348ff2a00a9b8cad59b0c144a6"
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
