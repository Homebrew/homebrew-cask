cask "firefox@nightly" do
  version "156.0a1,2026-08-27-09-45-44"

  language "ca" do
    sha256 "61246d08b67d30fe580edec4f899222b96f20dd77af97815616a8c3d19465511"
    "ca"
  end
  language "cs" do
    sha256 "6bdda483a19e7f349a359044dff3ee0683c10c7c5c4b34bbac83e1bd44c68ab9"
    "cs"
  end
  language "de" do
    sha256 "bc246827eb77517adb0fbce8f6bd959df724760289074e0f0f0ec5e2a40e76e2"
    "de"
  end
  language "en-CA" do
    sha256 "f221ab5d9c59958c5192067fc2e9c89f0f33b6777e6b4e5c2283b5131e935594"
    "en-CA"
  end
  language "en-GB" do
    sha256 "077eaeb9c974d66e3ea3fa1d5184caaf01497a9a452d9e803e7885e41edec549"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a6824ec234e5b153aacf84534a5a8395d5300f10aa56f2547763383d2ffb574e"
    "en-US"
  end
  language "es" do
    sha256 "30784f436118790191cd65f1714b6d2a01e8eaa461e1cfdf12790dbc9bd7a70a"
    "es-ES"
  end
  language "fr" do
    sha256 "57ddc1394a3fbcd616e64d66bbd8e55b6c7b2c9afe1275fe9d861b7ea3b00c27"
    "fr"
  end
  language "it" do
    sha256 "004d530db360fead02a6573288c37a5cb4f33fdb98030041ee865f707fa97875"
    "it"
  end
  language "ja" do
    sha256 "d35e323c5158de8b9ebebf1c703425e8d2bfe290ef03169a4afbc19b05db1d3f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "306704c2243a6f25584e0b344e2f7ffac15ad0e7ca05af617711f173fc6724f3"
    "ko"
  end
  language "nl" do
    sha256 "fa6ea86f3a01ba1be770c9ab8cb6cd04b10f7d62a8af5546c8cf2e55661a33b9"
    "nl"
  end
  language "pt-BR" do
    sha256 "6bad3992a30839e4d88ad8eb55054abb918d3e84eeaaafc40a662d68ea776008"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd90aeb231d346f7cb6ddcbcfec7deec8e68f3a1cddccc65ac1ffc8dc894a53a"
    "ru"
  end
  language "uk" do
    sha256 "ec169a2987361b1ae92331f9d6f36103c670d6e5d6d029005999034c3632a8b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "231483e1db723ead383b020e10cb496432400ae10ba7bcf4b21e039a688fcd25"
    "zh-TW"
  end
  language "zh" do
    sha256 "62a369027d7e4a7ed68a88f84b478143a8871fd189ce7516b1d0aed50f125079"
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
