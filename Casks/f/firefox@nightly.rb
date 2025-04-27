cask "firefox@nightly" do
  version "139.0a1,2025-04-27-08-59-21"

  language "ca" do
    sha256 "b45a49750ee7c8dd3517303e639c6f39ba329b37eeb129e718f20786c331d406"
    "ca"
  end
  language "cs" do
    sha256 "d038a2fdcdc340bbff3ca82232be49ffb24a7c2c421de2bb9f834d7ebe99b312"
    "cs"
  end
  language "de" do
    sha256 "efc3014a1cdb8ec84178d579ff98e068d672b45cd17b167ced749dc073baf0c6"
    "de"
  end
  language "en-CA" do
    sha256 "d37788759072705e318a8ef8472649d8d358c7a6b59324e21360c707d29286d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f96d92acfe3d364cbb0ec3180f7bcf1f6276de484628873d683715bbfe0d6969"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9c13efca4c3c0435509ef4112347f2a325691257ae81059a52d3c7ebab5c71a"
    "en-US"
  end
  language "es" do
    sha256 "0d1ebcd5f02de7f0e3d5292f4cd41b5f9ce7342c86cd95bbc7eed4f4aa91f1f4"
    "es-ES"
  end
  language "fr" do
    sha256 "412c5de0167d586a6e4e40cbde456a819f216fa57c501422df0616985ac8b154"
    "fr"
  end
  language "it" do
    sha256 "e879b5c77e4b5d60670ab73465b73cf208ab9c8019b4761688a0a8cce94673ae"
    "it"
  end
  language "ja" do
    sha256 "b1dbc5c359336ee23b158630d0e48adc0a38ee978ae6b3644205de3e0b76b87c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b0681e1e0b1cc74a8ac38035b7aa3974bdde118112bf33f7328911f5df40e3c2"
    "ko"
  end
  language "nl" do
    sha256 "834c7236192579ea879fb6a084f74be31adbcfae05e48479597c62312f273c8a"
    "nl"
  end
  language "pt-BR" do
    sha256 "52de755f7ab19acc3e18f08ead664b2eac64205233b115bd25150e151578fb77"
    "pt-BR"
  end
  language "ru" do
    sha256 "9835f8cc9786c2d9f264bd20d4a803ceb14bbd551d0ebed9c7f99fe50467b3c4"
    "ru"
  end
  language "uk" do
    sha256 "c55d2d6ea68761fc8997e53180f7a8877089a5ee78bb41edeb8c90cf97070363"
    "uk"
  end
  language "zh-TW" do
    sha256 "59d039eff7cdf96bddcddbd5bfd161f44568d867595366ba3021e10bba2166c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "184fbfdefbcfa0ee50f66e9098f9e116e0879fa979b027f1c11f10033b1ff052"
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
