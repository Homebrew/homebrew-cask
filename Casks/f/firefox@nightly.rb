cask "firefox@nightly" do
  version "153.0a1,2026-06-02-09-33-30"

  language "ca" do
    sha256 "775793af91c27af06d622617dc77b15cf8ba122cab9a177ff274a096d34e6def"
    "ca"
  end
  language "cs" do
    sha256 "30064a83b15dcd254c733c7e9eefeb91f976ed331cd8789cd19ef3bcde5b8fbb"
    "cs"
  end
  language "de" do
    sha256 "1785b8b66597b7d9ab6235fa658340ba17b42b10d13d7511586c6bd1a87d38a3"
    "de"
  end
  language "en-CA" do
    sha256 "750548df454e64723a71a5865ef49ef1f89a94083836b472fddb23c819cbf750"
    "en-CA"
  end
  language "en-GB" do
    sha256 "547c3a996d2d93ef483487f6dce1105d4f6b3b1078581bc5a37b8696d04e3644"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6cee27f115f9bfd4ece3a8422ee10409128836729b05cd6fe9c2ab22a648b19b"
    "en-US"
  end
  language "es" do
    sha256 "d14c30b21644c6d8bde9f8d42eec53caacffef4fed42a0b886bcc08e9dfd175c"
    "es-ES"
  end
  language "fr" do
    sha256 "53698f70717dae23c075ad14c461055264ee5aa801f489b5b495738980d2995c"
    "fr"
  end
  language "it" do
    sha256 "617efa51ec42498d19199fbcb8630f470ea7dac75570a4cdd9dd5b512576e31d"
    "it"
  end
  language "ja" do
    sha256 "d4fcce3e2f716f6be9b84690693f7807a7491e2b1fa59bbd9167e04aeb2e02bd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e84f09ae8f608d27ffdbad12558da77469c37dee3fa48ef8f401668067636f5a"
    "ko"
  end
  language "nl" do
    sha256 "2aa3179c652c88924158f571c3d94052e83ba7e7aa38fb07b6cb1105fb6bcf34"
    "nl"
  end
  language "pt-BR" do
    sha256 "77a8ee48f7afa4defab5589fd1e1c8c49f82071e1269b33ee54ec274dd81fc32"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee488e200b1a3e319af2d18178781069b4de33eeb1071306b44f89e7e124eb5f"
    "ru"
  end
  language "uk" do
    sha256 "6d3be78a5a848e590fa904470aefa6f066114e847e6f513135c485aad52ccc8b"
    "uk"
  end
  language "zh-TW" do
    sha256 "13013fc3a0dcdbf28703b213ecc29bc04116a3c56cd37752649585c57558cbae"
    "zh-TW"
  end
  language "zh" do
    sha256 "b31d57d7fdf84480efa8f2bbf89dc8fcddead13454d19653ec5ef536ab87914d"
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
