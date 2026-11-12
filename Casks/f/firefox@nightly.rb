cask "firefox@nightly" do
  version "162.0a1,2026-11-12-01-04-10"

  language "ca" do
    sha256 "16a23f068b326194205fe6f1b954cb98a85213930d431711443530d0cde8334a"
    "ca"
  end
  language "cs" do
    sha256 "ec44e52cf690a4cb051906040ffb578e54cffc3c187e55a26f2ec339754a3cbf"
    "cs"
  end
  language "de" do
    sha256 "e46c9f2ca553982150c9a6594642b352c7826d25e9669e5fcbcc8caf84182409"
    "de"
  end
  language "en-CA" do
    sha256 "db72a7377a6f12444302fe7199939b4cc5862530e3f84f070dcbdd1e389d4159"
    "en-CA"
  end
  language "en-GB" do
    sha256 "48f9fbe979ad6509498bf6001813f2e2db3276b0df631d599c449a00b0b4168b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eacc00e5b799fcfbcd6355df6f01baff60442a7379230d1734c6ec89e03eaf8b"
    "en-US"
  end
  language "es" do
    sha256 "7c95dae0c7a64029647b0b67813efdb76f0beef1118720b9a7b33d737761cfce"
    "es-ES"
  end
  language "fr" do
    sha256 "76a17fb23d07217e68b863af89fc88c71c7b11e01f7f1f15ae0fe4a3691549e8"
    "fr"
  end
  language "it" do
    sha256 "43a4c69a756b9e4f8aae975057fb21ce04b2e4234363eb9b002378b9611f5b8a"
    "it"
  end
  language "ja" do
    sha256 "2373dcd27bde2846c0c97b7a730962e7072abf6a17fa3916e99a5ca7cb075789"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e4a5813261e82982d955e63675e2398a0f7f5547fc423cf0b99fc6c793aacb61"
    "ko"
  end
  language "nl" do
    sha256 "5fb555631bb4bfc0c8f3c3b3156964c6a5f9d3f070c3246e0225bab8d2e34e09"
    "nl"
  end
  language "pt-BR" do
    sha256 "b0083516ecaa87b08ef3738f192ef23f3d27d51993e3d026b9552dc8c36d4cc2"
    "pt-BR"
  end
  language "ru" do
    sha256 "719e9533d6bba69415ca17a446b7b1d41a977069d3978c23cc7bc0e2130396db"
    "ru"
  end
  language "uk" do
    sha256 "c5f20d81bf1c955f90dd1f1e43f7cd2678f52c3fdcea40bd505187dd823aab15"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6f1a9029f1b9909805bd49e45e1b2169419b8d1f42f6943a60163695a22ba35"
    "zh-TW"
  end
  language "zh" do
    sha256 "0310239c69e19f6946aa199410b02abf23301431da735045c382c163c567335a"
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
