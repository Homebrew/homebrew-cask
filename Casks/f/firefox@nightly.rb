cask "firefox@nightly" do
  version "144.0a1,2025-09-02-09-48-07"

  language "ca" do
    sha256 "60139469fa0ec840ad4d967fd4cf587a396f32b04575b1db6fd1dd0674e13116"
    "ca"
  end
  language "cs" do
    sha256 "3586e5f7cf318054351500947ad6c00596a7dfc6ecacf2d4370591631b14b54b"
    "cs"
  end
  language "de" do
    sha256 "e64987effa2c061bd4e6be31e2a3ab4b37f39a773752d6048a636244a79d4d3f"
    "de"
  end
  language "en-CA" do
    sha256 "a892555fc3f378bee55fb38c883bfbda6fbdb29660f597b6011d6acfa2fbea00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d2477ccd0a12d4a65f0249ae19e4d8b98544488d4bce3a2087678a5eca436a89"
    "en-GB"
  end
  language "en", default: true do
    sha256 "379d1f180ea5905397541b60edc69a06c17e3cbb60e665e34090d59f41d6a144"
    "en-US"
  end
  language "es" do
    sha256 "9559623190a2f4b90f8406a8d211bcf78823cf11a18f8e780d5452b0b0d09d53"
    "es-ES"
  end
  language "fr" do
    sha256 "954ed344a1b2a50031d0896861166ee7a3792b318e08c23d42f3532281ab3fbc"
    "fr"
  end
  language "it" do
    sha256 "3f4f70a28a3adad2add908ad9d2cb38973d7bc282aede1931d2eb3970240fac7"
    "it"
  end
  language "ja" do
    sha256 "54ecd53c36e4a3fa287d1b9395c8d45ec719ddbd7af01f6074029f9d546349bb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b9ca5231adea3ab3ebc0f39973e4b8f593ee6ff51a1dff8971917f23d5ef61f"
    "ko"
  end
  language "nl" do
    sha256 "73859f32daf9dbb11db57e4451ac7e626a38d00deb59e0db5bfb75e0fb27cf5c"
    "nl"
  end
  language "pt-BR" do
    sha256 "dc746372f86016b839b58f74a541a6288e7e1bcead7ad326250801f5722af2bc"
    "pt-BR"
  end
  language "ru" do
    sha256 "29372cc255af3e6c088b89d2f30c113bb6d64d5422fbf61ada41edaf870d3501"
    "ru"
  end
  language "uk" do
    sha256 "7ecafe81781bf4c9c43f832b86533c5c591b5ad22c445205be450ed6e1203b18"
    "uk"
  end
  language "zh-TW" do
    sha256 "01866d78ee664a1e0f9774761001dc456556d2b9673e0d16cf7e0d01060d395b"
    "zh-TW"
  end
  language "zh" do
    sha256 "186797c368f23caeeb1b4afa1f5d4ff282017ebc072220232635cf4d66970fb4"
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
