cask "firefox@nightly" do
  version "143.0a1,2025-08-07-21-08-29"

  language "ca" do
    sha256 "3cf6e4ed3848b4d20877e572a9daaa03778327a1af18dad82b90f2b506cd1af1"
    "ca"
  end
  language "cs" do
    sha256 "6538e217449d755bdf11012d039b98bf5478fc92f2416c72befaba691f777bfc"
    "cs"
  end
  language "de" do
    sha256 "f08af6e859545582408f5eb26641daed1e70882098b7d5c17b5ba1321e0cec62"
    "de"
  end
  language "en-CA" do
    sha256 "1f5b460448267610875aead8bff3d3a6d977c14b3c365b5304ad180eaf089207"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba8b482bd8aabcb146940a26395d7d85981df8c6afb1faeef6edf40b87cf1e7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4199ff3ad4217cca24da1ca64738c7672f5950c0cb10081263d1e61611b65f27"
    "en-US"
  end
  language "es" do
    sha256 "fe636944c7177e758fb5a6dabd099deb8f0dfa810bf7109fd4f7ed26de206857"
    "es-ES"
  end
  language "fr" do
    sha256 "7af9413d0e95e0f660040dd5755ad543713a8659c422f18d956ce085b8e4d776"
    "fr"
  end
  language "it" do
    sha256 "7df2b87d629612237c93949d46c301ea06d9f768bd130b7a1d1954036e83ba34"
    "it"
  end
  language "ja" do
    sha256 "d799dbd968f92ea7e921bb58e30389d61912393c69ee7e30c56a2addde449800"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "afcfd11f0f05f3e841ced91fcfd90bf3ca817b6211b31044d4bf6825ec433f99"
    "ko"
  end
  language "nl" do
    sha256 "dc9cf65c647f7230655fcb14fbb6204d8aad5a5c8d82e325825366ce5d4b3ab7"
    "nl"
  end
  language "pt-BR" do
    sha256 "158247cf8edb0f9d4da7d885a1d59d8657679fc75a9cd515d807b9c6992fa61a"
    "pt-BR"
  end
  language "ru" do
    sha256 "145546f4dca32f0f8a7559c0afcf8f24bef361b86fb8a99bd8e789a1b8f78760"
    "ru"
  end
  language "uk" do
    sha256 "57289181f820b5790368da009bd19df9c52f2142a8d915146f573256b0cb62b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "8022e6c8c09f52f149027b36e91e90246887fc1bf641bffcc9d322d324410133"
    "zh-TW"
  end
  language "zh" do
    sha256 "bc0bc0c37527b263f4a5dd0d75f8872c872f74ca6f217e858a1fa37c965c1bf9"
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
