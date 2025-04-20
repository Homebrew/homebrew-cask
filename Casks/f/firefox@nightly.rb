cask "firefox@nightly" do
  version "139.0a1,2025-04-19-20-48-23"

  language "ca" do
    sha256 "d02173193567e7b09baf51d82a7fbabf4b22ba8208e3a46c704812e5e72b35f9"
    "ca"
  end
  language "cs" do
    sha256 "6e2e710dd2afdf6909d096fd5b6af0fde48ffe127e6b2dcb4c474144e8d18ebd"
    "cs"
  end
  language "de" do
    sha256 "3c6f3d47775a083b72d1191ac8a1dfc99c14e5a20871e1d76de341d794c0fdf0"
    "de"
  end
  language "en-CA" do
    sha256 "375d98adf324fd74cb75f311f5a2f285c753340b99ffd00ecf9fc0a8f17ed1c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5e17b90ebf70e34c95858c648eae3d21d7540bb01691f81c899e69c8471888b3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "28653e19fe7bc0c75d6015413632ffe0c121d4e224c7e8beb03c3b358ccda6e3"
    "en-US"
  end
  language "es" do
    sha256 "33e7458428460f517d3c9e91d9c686e23e6c5dfa74f23ca3a5accbaa4e4ab204"
    "es-ES"
  end
  language "fr" do
    sha256 "2e1b66c4d2a43dd9ccd15d11d8e55618f3cd8076b791dedca7ae894daaaa8c43"
    "fr"
  end
  language "it" do
    sha256 "0d8eff5b96fe40b4cb9ac9cef9c3dd5edf745921c2d4818774b35a483bfd8391"
    "it"
  end
  language "ja" do
    sha256 "102f14384f8e259a747f3e53b13b69217d22ae79621768465b8bb5b37f5d72b6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4bd50f7fff01f1f96c9fd021e414a96cb90c4225e2008c367d19debd2b98c47a"
    "ko"
  end
  language "nl" do
    sha256 "06dc121a26dac3f3b16b9d037e3c876db6f62b0f9d9c9845dc9bedd57194a67b"
    "nl"
  end
  language "pt-BR" do
    sha256 "fe2fe90bb4383e3989b645a5fe71667403425085ec1608a430634ea936525bbd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ca39c9d864af5370365eb5d7ab571253684b55671610415b236bca059d2810a"
    "ru"
  end
  language "uk" do
    sha256 "5b720594e985ebf9ba306d6a3d8a73c4c6d4bbce81858399c9eb45963a419ae0"
    "uk"
  end
  language "zh-TW" do
    sha256 "38670f7cb42248d966da68d859ab4994023f23903a8ad59bfe288a76f2ebabdb"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5d5f57a0a967f66b733920dd49a8d2524103486cad7c86e1b4651bc22af1ea3"
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
