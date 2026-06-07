cask "firefox@nightly" do
  version "153.0a1,2026-06-06-21-33-47"

  language "ca" do
    sha256 "c0127fbae982a6f364d4f3cae10eab1449c1840444336ce4a26d582f4d35ba6d"
    "ca"
  end
  language "cs" do
    sha256 "25d27ddcaf05660122e5a8d76d460853319e9eb2375d3c8dfa266f707fb38a73"
    "cs"
  end
  language "de" do
    sha256 "1dea49738e8dd20bf082696707b33c17fb7ea9835a8cbc10a0357ba279f5e81d"
    "de"
  end
  language "en-CA" do
    sha256 "20268eaf0774f9b595c5cec1f144cd92d82aa611e087241a537b00f50ace7c11"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4705035abefd875261bf1cd73107fe9c663f8fb1408d081f86c905a99dc37324"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8514536b0ff58d868527b60568eb722c3eac1e5117402fda868fc1ef3a3484bf"
    "en-US"
  end
  language "es" do
    sha256 "5dec3e4bcf5e77720a67429a34bc89c16a66d4875ba85b88b8c147e140cd96aa"
    "es-ES"
  end
  language "fr" do
    sha256 "376fe4c6977277a40bf5a807524941d408d032da30b27b1a6652f6244daeed5f"
    "fr"
  end
  language "it" do
    sha256 "3648c7b769a591213d5ccfa4348539828d116d59928b904f80765efd500f3280"
    "it"
  end
  language "ja" do
    sha256 "7dfdfa3fc4f170721afa4d5e0e3380305bd35075c3351d7848f27616272c661e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7f086c8e16fd7618d96ac36a1ec749e583e862c07b71f63a27fdc04a16ef2326"
    "ko"
  end
  language "nl" do
    sha256 "e81444c4ff7318ebad4dec19507abcddd6ed0cb0d28686e8664f17c62d53c609"
    "nl"
  end
  language "pt-BR" do
    sha256 "b2d60c5fa2f764c41093868f85f58adf1a09f84f9fc039ba0fe4721f0d82f183"
    "pt-BR"
  end
  language "ru" do
    sha256 "587c281d030e298319fe4a8e66479961c1d55c57d56edb4c0d9e8a3df2187d92"
    "ru"
  end
  language "uk" do
    sha256 "2d7769e18aaeff4910b5f902bbdd9ace7e666d0068fab1ba89c71896244fc62e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5acd08deb9db2045bd849a53ead63f779564e60677e54455b812f689e09b8915"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e33d442d59223da27ca47d4f2138d44a2b31c9e7127574f2f732a615a9d8dec"
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
