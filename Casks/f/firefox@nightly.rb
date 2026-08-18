cask "firefox@nightly" do
  version "156.0a1,2026-08-18-09-20-26"

  language "ca" do
    sha256 "ac2445c458d6b8739f4a267a80157b59d944c76e33689ede13528922df1b0eb2"
    "ca"
  end
  language "cs" do
    sha256 "e4873aa55312b08349c0dd1b8108ab4ffed792279373f7273df6382fdfce8a37"
    "cs"
  end
  language "de" do
    sha256 "b5eb0683793cdbed4ad8a113af12887695bd90ab723bd5d1ee65cb71c3b75350"
    "de"
  end
  language "en-CA" do
    sha256 "08ff47cc8165c65a9c284d105c9ebcf4eba4bf2a348a912c3f19cf8d2947409e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e262841acebcf45da5263d019a823e655ee6f72e17023fd172ccc70d5bfbeac8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a5215f7e5441c3e9e3071e0fca378ab8b1a6222452ce66e7a65a2c399a4adec7"
    "en-US"
  end
  language "es" do
    sha256 "389f6224a052fe962e90f4d8f9bd23c3a945a8583084a7040ae18ace9ce4efe1"
    "es-ES"
  end
  language "fr" do
    sha256 "e34d618054ca06147aba7a12fb4ced656d68a0bccda388435f54cfadefb91518"
    "fr"
  end
  language "it" do
    sha256 "f183a7846b8b599bd1faa41a6e7920c5fa6589c32d2cd1ed08edd1cca10634b7"
    "it"
  end
  language "ja" do
    sha256 "cda438a19af86aac8529f461c1b2cf0bc41bae0f6518f4e4ce656ac80c4cb5ef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1e058555afb7ca8fdd7fc1c2db1c6ffb630bc1a655884c1a9ea71dee664d681e"
    "ko"
  end
  language "nl" do
    sha256 "c9292713771e74b72314e0cf1639d05b45459273536d8149d6a43bfa6f0a4ba8"
    "nl"
  end
  language "pt-BR" do
    sha256 "bca2bd01791244244b4cea470b87edb3ccb00d610bd1d304cecf7af0a3686832"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f4743eddda73dedb59c8f7402cbda09396b4517fdb5648d9d3b4321e216b0cd"
    "ru"
  end
  language "uk" do
    sha256 "a670102dc1b176f8e83adc41c908e33ba3502d6dfa9c9ddcdcfb72aaddf54820"
    "uk"
  end
  language "zh-TW" do
    sha256 "38bccc5e3ee55dad79c921852514b1032bde68e205276f1163b66064c7aae181"
    "zh-TW"
  end
  language "zh" do
    sha256 "a1ffb4e5c2bf3902803ea66726664da1c1cc118342d2a1b0e9c36d7c80eb9d92"
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
