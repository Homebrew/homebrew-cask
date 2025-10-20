cask "firefox@nightly" do
  version "146.0a1,2025-10-19-21-10-57"

  language "ca" do
    sha256 "7362e43fc1ee634eb0602c14ad33a57143390ebc6c721b2e64e9a0a59da2eab8"
    "ca"
  end
  language "cs" do
    sha256 "628abf15ec71cc840a14901366cb41047473cf28e2888b03bc71c90bef8a6ebf"
    "cs"
  end
  language "de" do
    sha256 "27b6abbe7af7b4332925e06e3a7a1f6a313f5098f9bfbcc86a24b1632c0a2f3f"
    "de"
  end
  language "en-CA" do
    sha256 "575a90176ed4fac16039079dab867eac8364294359dee2499b39724406088f9d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e1560d2a9f4d2abe3500c26793edf7a01732b13a2b1afa49565849b0ce446de"
    "en-GB"
  end
  language "en", default: true do
    sha256 "92f3e8e2df8eb3ff777f5cef6f8cc4305cd54c5e5c389804e34679534eb7f662"
    "en-US"
  end
  language "es" do
    sha256 "76147b2da7e4d6f40b02a7fce313899e2d8986d071a6ca7e52ef788677e68e1b"
    "es-ES"
  end
  language "fr" do
    sha256 "ccdb121a554498e3ae35a0cdff9df3168b0d54f330c760c78f82ff1303258a45"
    "fr"
  end
  language "it" do
    sha256 "369632c232a603178ea331d12e133212dd358d51b6746f8d1650d6fdc4159737"
    "it"
  end
  language "ja" do
    sha256 "b10d2c1a7efd2096b6f300a4066d33d8a78b462d8daaca99b69ea26ebabf1aea"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c9acb2c942475f27f44542ff32b25c0b75d3e5c44c6db8eef7bb233a7e74c2d8"
    "ko"
  end
  language "nl" do
    sha256 "ec8a0e8df31d6aecaf9b9707f8d43f91bf6f7f62c463c78ca77945e6224c9d2e"
    "nl"
  end
  language "pt-BR" do
    sha256 "f8b63ddf25872d58187a336aed9a79652f195d4f712bdf0a4a65d36d97fcd835"
    "pt-BR"
  end
  language "ru" do
    sha256 "b00602f37fa29ed6b4900521d1b4e1a997ba4c1e19816dd26a6a856f3c1989cd"
    "ru"
  end
  language "uk" do
    sha256 "45e2d672c750e563143946d5108b9bfb4f73c2c142bf2dad9ae007a4390bda79"
    "uk"
  end
  language "zh-TW" do
    sha256 "14b0b9c537013fc82dc682c909ff15776c04793aca0646dfeabb593292e06dd6"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ad306d1f1f9bf35e30b1195b471c0dfc7dda12fcca873bdb14feea666fb55b4"
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
