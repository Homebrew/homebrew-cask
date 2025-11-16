cask "firefox@nightly" do
  version "147.0a1,2025-11-15-20-40-42"

  language "ca" do
    sha256 "3bb77b5904ef01563ab5865639a9d77b9b9ab8016d25343457fc2ff3b52e822f"
    "ca"
  end
  language "cs" do
    sha256 "3d04929c9643a53195f23db23c78c99a4a985894dda4ebcac3e502b23e9547b6"
    "cs"
  end
  language "de" do
    sha256 "f4c66a8fab74aa3a3c8a3d25440bef1449b35d7dd2b2d0aa8b6696d0feeeb1ed"
    "de"
  end
  language "en-CA" do
    sha256 "6c8ef1e5ce3484842a30588e43480b603606a5d7a72e534d42ced2af8efcf237"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8a39873ab7a1005e95e7ae2016659aeadaa8899e7cd72c51fcbf8baf330216fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0af8c1a1f4973f96d3b7118c363f6ce478d1f04067cb60f0c009eaa0249e6b3"
    "en-US"
  end
  language "es" do
    sha256 "6bacdc19eccd0c6740933eea3c87dee55f1fe53f08511ff8034069d2bd47e238"
    "es-ES"
  end
  language "fr" do
    sha256 "2cf55bbf281c319e43a776cb90d619ca50528a4dd1c2c59b4b3c8ea60d697f4e"
    "fr"
  end
  language "it" do
    sha256 "be208c67d676caa75cfe83c0ea01043ae5a534adc4d5742f490dd44c52020880"
    "it"
  end
  language "ja" do
    sha256 "a9b76f253c8a03cab1fbf888b72036d1fa81c7e26090a16a63c0272de256e4d3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "42051ea59f5db2e337c8b022f5316c55e793c8de008acf324ba0ee5272c46363"
    "ko"
  end
  language "nl" do
    sha256 "e27e914a2efcd97d257c34e05d8f13a3ad93f303f9ab0ac5249a77cba2ff68b0"
    "nl"
  end
  language "pt-BR" do
    sha256 "b6a00f2d38231d5892b7fc8eb6f32c428d190124888c1c7e4b5227bd9820e9cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "d164e1ec91961a3705247a8e1277617fbfa420279be43f3051f1d356c6589403"
    "ru"
  end
  language "uk" do
    sha256 "41316787f30d307d3cbdbab7a7be02eab11800b3e424fe5b0d1977d4e4bcb526"
    "uk"
  end
  language "zh-TW" do
    sha256 "d4f4a0113d221bd101b66d9723aea1af594d507d8598d1f800ce1b57c14ef4c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "e36346e93beaef5ea2a7e7f916d1a01ff9d05699acbfb69fb1ec255cd3483b18"
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
