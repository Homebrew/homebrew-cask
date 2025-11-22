cask "firefox@nightly" do
  version "147.0a1,2025-11-22-09-49-14"

  language "ca" do
    sha256 "3d5e2d6644d7f858de4349250c23dd4a5a667107c21a3f72ba81fa386e1e04a6"
    "ca"
  end
  language "cs" do
    sha256 "5be71ba7753e8db3378764f416dcae54727f556685e2b6a2099f1b6e749515f1"
    "cs"
  end
  language "de" do
    sha256 "42fec65427f65700464b1439befe1ce0466263540c3b14480532b8ce36cfc4b7"
    "de"
  end
  language "en-CA" do
    sha256 "b29fe39886a009357ec71a650e5d5a4ddb6902fab2492ec187d528a5bf2ed655"
    "en-CA"
  end
  language "en-GB" do
    sha256 "28d63ff3d2af5cdcba64775c55e3b4b24b03d62850a2ef6527d107da5106fa7e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b53314b50e6d6a92004ffe60d4a6be5262b4477ef001b281ef02b74c3d6aa2a7"
    "en-US"
  end
  language "es" do
    sha256 "dd854c74ff5b9dbe088046fb6f8f9b5287ad14128b4f85964551f83541d9ef8a"
    "es-ES"
  end
  language "fr" do
    sha256 "3667bc0b1fc88f6f934c2da4d0506e65c6b5583e88e635354f472877b62226a1"
    "fr"
  end
  language "it" do
    sha256 "5e2b59ad3b9411b64bd86fb88a31526d4d3c64b02e9079f43afa5dcaa6d1a856"
    "it"
  end
  language "ja" do
    sha256 "a1928b92123c82cc53609af88c4a50c17f9edf076e26e4d00499eb3ba664646d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1d5d472aed6776e26eff0ae94c0a018ab509afe148a8564cbf399f91566d5e3"
    "ko"
  end
  language "nl" do
    sha256 "ca7fe3283277240aa22802208a8355704fd57532e64ac42c6ba2ffaae67c0130"
    "nl"
  end
  language "pt-BR" do
    sha256 "d9f6e0eca6f36926603f2dc1aa2d1dde63a188ca32613e4f1bf6cf5c312beacc"
    "pt-BR"
  end
  language "ru" do
    sha256 "46b714ba13c59b8abb3ae8698acde08d29736a47a4554e405603cc296f23ec1f"
    "ru"
  end
  language "uk" do
    sha256 "fc5be0a19ef5a14e683d77fd75dfcca68d79561319c9f5ce91ad19873b123a82"
    "uk"
  end
  language "zh-TW" do
    sha256 "1547320d0583a3a32eef797536ff19575a78d785300ae92a25906d8512f2bd81"
    "zh-TW"
  end
  language "zh" do
    sha256 "80d7ed1ef4a0a9c268f48263ebaf7de92a3fcb5e6356f70cf960eae6c47cd46d"
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
