cask "firefox@nightly" do
  version "157.0a1,2026-09-05-08-59-45"

  language "ca" do
    sha256 "91cc12103db20db3c2f1a780a85da33853f6084d4d9239edc09871f55127ca9a"
    "ca"
  end
  language "cs" do
    sha256 "c3ae5ae18db840c52d9d21f4fae122fe165e5995eb229ffadfe22b5b65a8d829"
    "cs"
  end
  language "de" do
    sha256 "584fd27554dd81b591b1fd0169f1693918f524d8d5ef899ccde46332d6ac2103"
    "de"
  end
  language "en-CA" do
    sha256 "97d6edd843dcad15baae248fa0b18a71cb9544f01e310909ef1aaa45059ec807"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d30453da01d3788e1619b5b527f4e25cad3330613d10dce60acfbf1dc50e79a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "84b98d0bff69eae06cc2a20f824252be7410b9f019293f16c24670f85d502829"
    "en-US"
  end
  language "es" do
    sha256 "b3f5000123a642aaa6d9ed2dc0dfe58149f2e4bafa7995d90ae380a01436f265"
    "es-ES"
  end
  language "fr" do
    sha256 "79536440a9eb6e366013510011b3c5050f3a6f8340d0b4ae08a7d0bccf594b24"
    "fr"
  end
  language "it" do
    sha256 "07157a4fdecccfa9ca17081b0012c689cd99ea91a64d11ed00df553eada3612d"
    "it"
  end
  language "ja" do
    sha256 "a0b3e12be5630d4bba225965238385dc1d664e0247a73ce85f82f12e3c7e768d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "44fb5b277076ed1720e4444be2c2b83e007f846765fde0ca4de9f55ba77cce0d"
    "ko"
  end
  language "nl" do
    sha256 "ca0536cc18fa8b6e5ba52594141f9d41aa21d3e2e88d985a984f0a0465bc403e"
    "nl"
  end
  language "pt-BR" do
    sha256 "5cdc5388d43e86890020ac8cfc44212bce8e9ccbf4acaca6789bc64f4d3f9942"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f47c635ef5cbce4cd3bc7a8a326a48a6c2258bbce2f397b3d20acdd60c98bdf"
    "ru"
  end
  language "uk" do
    sha256 "aa5ac4113a4311f90e25598157768398cad13bb2fff91d94cb0a52c6eb8be3d6"
    "uk"
  end
  language "zh-TW" do
    sha256 "57121ef71ea64ddf399b89d3f8f73dc8d92ce7ccacf95f0fb3241df2073244e8"
    "zh-TW"
  end
  language "zh" do
    sha256 "127fca250f5e1547c87838138a115648bd256d0c9024dcb623447f422a94cb2c"
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
