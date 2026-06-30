cask "firefox@nightly" do
  version "154.0a1,2026-06-30-09-03-37"

  language "ca" do
    sha256 "da423f17538c46ee7def804418e1c57853068ce29280f727c62ccb70050d44b1"
    "ca"
  end
  language "cs" do
    sha256 "47436aeb4287c27265a5c855925ef80b4193875b2f1c02d668e5f423b3d3f209"
    "cs"
  end
  language "de" do
    sha256 "48a4ae867cbf1d9fe12f2c08fd6774171872631b60490d386f0271dbb0917a1b"
    "de"
  end
  language "en-CA" do
    sha256 "a4205dea345c4247b871e63eb837ed0ece57b0e77ea5343629d0ef21efa35a8c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e96f4081087dc13f545442d03890a08180bdf231ac859763ce1061af66ef494"
    "en-GB"
  end
  language "en", default: true do
    sha256 "56843ec14ef56081338d9e986abd49bbed79ca00d90c754e6ff690c5edd56e6c"
    "en-US"
  end
  language "es" do
    sha256 "5b9099df7ada2ba2138d408fad59dcdce6b42454746aab5549ad0248976d9652"
    "es-ES"
  end
  language "fr" do
    sha256 "194e381e5ea8d1b9c9da9649892f85cf251b3f9469ee6e1abaae83ae0fa50861"
    "fr"
  end
  language "it" do
    sha256 "ce69372e548c2416dba71e0fd8fdda7a31f2895672b1a872b4242e08ce5e707e"
    "it"
  end
  language "ja" do
    sha256 "ffc45906ee27d80fd7951948e138a73e02fcec4a26de38c7f51a78f512b3999c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cd88d118ba8286e7f2f3b24d75099f8cb70e3d999444b142ff91d7fd870bd9c0"
    "ko"
  end
  language "nl" do
    sha256 "b4bf0dcfa47410c5c3cfabdf0efc65abffb917a8d445729ccf49c9938ebe568b"
    "nl"
  end
  language "pt-BR" do
    sha256 "3336e5b6d663f0e405bbf5fa1fdf4bfb487585c9df5f495cdedb4e75ff78207e"
    "pt-BR"
  end
  language "ru" do
    sha256 "adc2ffdd4c574c2864621d55d1526d8dc1d419c20c1be99c76ffdc1f17af1cd8"
    "ru"
  end
  language "uk" do
    sha256 "20ddf0b8b59235e37f4c9b3e2aa5230a72d2eb60d78e21f7f531c3983986d3b7"
    "uk"
  end
  language "zh-TW" do
    sha256 "1aa15a29e6615f820dd16ca39c713f5018516bc6716d3e542874c38b2c5e2f29"
    "zh-TW"
  end
  language "zh" do
    sha256 "60c485c16a5a6a1856d9fd5c863c13fd8d8e71468ceaf5d5bc7faef6d2385dee"
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
