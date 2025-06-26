cask "firefox@nightly" do
  version "142.0a1,2025-06-26-03-47-03"

  language "ca" do
    sha256 "0c4db44bff906342718a3c8830ae216ff7070ba70769be048067303fe523bcc0"
    "ca"
  end
  language "cs" do
    sha256 "39af48347325aa3fc1dd76b3cef6d26e499ac28b3c643d50a6ca2138be93cbaa"
    "cs"
  end
  language "de" do
    sha256 "9b8375efd2c17fe70bb362b6c602e6a2c9f73a78b557c3863eeecc09277ef4b9"
    "de"
  end
  language "en-CA" do
    sha256 "f0f9de98f0ae9f107bcd2ee2b02f1c0df087b00e44456a219a699ecf82fea178"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c6a57ba632ab9ddcdc2075c6e46513e1965ca6448e479dc4f945685126c04d8f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9498ccdf60e68e52ec547c9fae6370b174af5d7067a43917e57f4729aaf153b7"
    "en-US"
  end
  language "es" do
    sha256 "dbca1912e18e2fa4364fce99e1709a9cbe55dc8c6c5bc4372f0a3bbd1e521ee8"
    "es-ES"
  end
  language "fr" do
    sha256 "e6555ebd750815f098029f626643e796800ac8bfbfbd07dc559f49e4955c0e9e"
    "fr"
  end
  language "it" do
    sha256 "84fd0e7db6db7f7524f092e76d775cf0d94d09beca32d0a1390c11905c8b3b95"
    "it"
  end
  language "ja" do
    sha256 "49e1be7d87e3bc713b9dd4f0d188c6f373e77689bb41feb31317505ddb9d9b6d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "903210657c15dafef1259b58c8731e50cf6954b213535b2151e2087eafd7820c"
    "ko"
  end
  language "nl" do
    sha256 "2ce300f32b5dca38bfa1784fc020f9402d17276674ebffaf315d43d8d73c14d2"
    "nl"
  end
  language "pt-BR" do
    sha256 "758387edb5dc4e63ee132ed96c2a08718652e6d8ed17cbe624028a36f239807a"
    "pt-BR"
  end
  language "ru" do
    sha256 "5f613062fd1bf6963bd26b80ba6fb1bf97147ff12e773078dc02f030d3028ff4"
    "ru"
  end
  language "uk" do
    sha256 "ac74b0ad28fc82a4ae49b93cb351fc0ecf4ce2a54a392543e702adcb285c77a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "02f27f997eb6a939f2c1da4e51273c73b4f60c04e488b48e37c9ea1c7e992ee2"
    "zh-TW"
  end
  language "zh" do
    sha256 "89badbe4d862d40839d59931dc60ea8f666b6d01505ce8c7cdd0f8112ead4ab8"
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
