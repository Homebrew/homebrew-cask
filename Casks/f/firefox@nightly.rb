cask "firefox@nightly" do
  version "150.0a1,2026-03-10-21-26-50"

  language "ca" do
    sha256 "d3d1ae394f397503d2d194c8832c3cea902985708fa762e9c652a9e891c2b158"
    "ca"
  end
  language "cs" do
    sha256 "533b7236a241a672c8a103a4ef32ae66af5a6fc439dc7fd622cc0592955426ef"
    "cs"
  end
  language "de" do
    sha256 "50d053d820ba6ce9db5de139582ea8f7d4f1b08d59a9f559def7b9fbd91af7c0"
    "de"
  end
  language "en-CA" do
    sha256 "055495d433878fe0f77f2e9f5d01bbb020852877eed1746a58f2aafe961751bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "457b50d5a4a13d66d23c0fd00209f2a06d73a1079d3821673640859b299c9114"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e922bfbb5f9f0ca38c60a8104ff9b45f7115a036767dafa04df9ebe7e331543a"
    "en-US"
  end
  language "es" do
    sha256 "683e1e4f5f6d7e61af417917da09858503808071e57ac4c691602f238728da1e"
    "es-ES"
  end
  language "fr" do
    sha256 "fbd997de3ddb2acbe15dc66237f77feb905a1ea9d93d8dd6d4fa59b834aa4bc5"
    "fr"
  end
  language "it" do
    sha256 "435cb1920128329164f47eb71e5c2765e5bc093e0d704f412fd3eab59aad1ac3"
    "it"
  end
  language "ja" do
    sha256 "f0445282016da843118806e7116c01d74738229d778f2fbbde1f3c0258746422"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "df66cda7e819caca4121355ae30022450945ad0eed054e0212adc31ba6fa3b4d"
    "ko"
  end
  language "nl" do
    sha256 "7becdfba9ac119f677ddae3c12044d59439d7cf32a894e1be48fd4637c840f80"
    "nl"
  end
  language "pt-BR" do
    sha256 "d75178b9f2ec3ff8cc5cc8f736cf16e37e90815d4e3ed54a1f6a71bb76d7a2a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "14ea09d57c616813a102f4ecbd9a44a840b467fdb457d8fa74e740c09e7ca980"
    "ru"
  end
  language "uk" do
    sha256 "18a3a09e99c2cdd8e4b49e330451dd220898815a6126d0eeb3e92a3e7f3012b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "20a61ee9daef86b0df1a6f17a7c299a521db51f986e164ffb3c3888964933deb"
    "zh-TW"
  end
  language "zh" do
    sha256 "2332dbb8b7f7ffea325b90b499155e07b1571eff05ea5b6d4f15895e338f2ca1"
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
