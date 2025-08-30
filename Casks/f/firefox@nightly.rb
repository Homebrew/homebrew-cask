cask "firefox@nightly" do
  version "144.0a1,2025-08-29-21-19-36"

  language "ca" do
    sha256 "6916242a6a5dfca3e2c29a3ba990ecdec87286f1caad445007087d7833fdeaf7"
    "ca"
  end
  language "cs" do
    sha256 "c7260e733272a9a2e1dbd9267732df27957251592fff247dce34dc61d4edf9a2"
    "cs"
  end
  language "de" do
    sha256 "0fe1ebbc85817631ee03902865d84c4b61fdae9fb0b3c2fc8073ebcb4e1e0740"
    "de"
  end
  language "en-CA" do
    sha256 "6ea1e9b806b20b3a879d6bb9d0cd18585b6203cec3d6ed38da7d1a807e898476"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b1bc089cd15c2158d205d301a2e595630baf747f09b0a44a3c8699b145a8a01a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd2674af37d66110801409608baa07b66c4891ff60b3b9b7d845bcba9784f46a"
    "en-US"
  end
  language "es" do
    sha256 "3f6bf2b9cb2f6d5c41d85e83112e4191c475bfd38719e1906600c596ecbd05a8"
    "es-ES"
  end
  language "fr" do
    sha256 "5763e8e8d443db5576458fb28a462ceb3880c226a2c7bdca5ea6719a4c3cbc3a"
    "fr"
  end
  language "it" do
    sha256 "55f05541c878df5065a10b9316dd87fad50da954e9bc01f44d9f1a9c4aeca75e"
    "it"
  end
  language "ja" do
    sha256 "fe41c1a0882dcfae8cacc7aa891f538eef20f6aace52d529ed6c4db91cf1db6f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "775aafd2f19dcc9578a806bb84bcea0844a3b230ac006759413e43a607aae5c1"
    "ko"
  end
  language "nl" do
    sha256 "4965547975f0a860555476984c9dcb99d7a750e86479eda1a9b7bb8350328554"
    "nl"
  end
  language "pt-BR" do
    sha256 "77dfae0e5a4a53f9a0502a86bce6657e06e08f312c51e2a4fae1da22439ca3e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f37b8917d8fde94dd0e94c6960d2705fe340214633c3a6202c6e64b79b6004c"
    "ru"
  end
  language "uk" do
    sha256 "4e0a4ea5ca8eb6f78916cef58ea89fe580c443b70380d52f809cac440035633b"
    "uk"
  end
  language "zh-TW" do
    sha256 "aada1dd0938538d37b413aae1af67ce8a12b50b2ad4001c89f5fd7b3233962db"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e4df8655e1ac96c9433b11d2b739bbe254190380038fbaccdc5865e07a27527"
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
