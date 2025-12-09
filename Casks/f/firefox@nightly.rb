cask "firefox@nightly" do
  version "148.0a1,2025-12-09-14-30-57"

  language "ca" do
    sha256 "cb2308d530b557b08ed78f9ecaa54c25ff2141fb5f5a2bc57c16a4d9a2ce3686"
    "ca"
  end
  language "cs" do
    sha256 "e74cc53b43c2d906387daa2ba1b067ba0d18ca2af495c3a5392dbb5d56268315"
    "cs"
  end
  language "de" do
    sha256 "fee5f9574828c7d0fa1368048ce77ba3838d7325be3aeb44657840c01bb6375b"
    "de"
  end
  language "en-CA" do
    sha256 "94da54f6aa95a75ddff9a70340162395009ecf1900a4b8c09c9fd28a757e8853"
    "en-CA"
  end
  language "en-GB" do
    sha256 "08b6266ebe0b1f098fb62a81381926932094f0411b164bf90c4840eb6c418af4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f2cc98a626f6b24cbce1bd3ca66e2fb243248f5b7178df8024ee7f86e39e612"
    "en-US"
  end
  language "es" do
    sha256 "1f6a67826d31d191e0b656aaa6b50f0e8df510910841485520f22d81a4d44b3d"
    "es-ES"
  end
  language "fr" do
    sha256 "d71351ec869fe42651cc3cd89b9a71a2ab44a96b25f5d3ef577651d1cea23950"
    "fr"
  end
  language "it" do
    sha256 "85bda4e35cd5af9bd8a04e2ac82ade52e4104c8398d2a7a8a05879a55a4a6e24"
    "it"
  end
  language "ja" do
    sha256 "bbbcbd1667a0b7a189e82a97332ee4eedc12d9ba7e36987a53c57794f231dce4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9784139cd561edfb528e44f85003658f94a94fa8f39d9841756ba9f4319467af"
    "ko"
  end
  language "nl" do
    sha256 "6cabdad485d3613b6e4a9e6db2dbb11720de68d3d7f51545293e9653709caa83"
    "nl"
  end
  language "pt-BR" do
    sha256 "2a4aeecb426cfd299a54bddfcb4c255e1735d2fde5976678cc8a2c1144d492a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "311b9d445c10a6ac582114a0b0e56184c75be899fdd0a96bb6aea6b6bebde1e5"
    "ru"
  end
  language "uk" do
    sha256 "90345c903187a8ee0a3d3d34e66c45b302015e07e68780152a2319f501ac2474"
    "uk"
  end
  language "zh-TW" do
    sha256 "e32680bdee27ee6c83a3b75f9632e627d49fb17794f78a96e6759e286d493e7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5e93f4d280309fa24cb9c19cef83702229c5fbf20574f5adaed1ec0453ea62f"
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
