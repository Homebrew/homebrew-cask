cask "firefox@nightly" do
  version "146.0a1,2025-10-17-09-14-23"

  language "ca" do
    sha256 "326489982da672d157955f2f48ea1b47db7ebec22fe47d8e602a0ed7ecc78c3b"
    "ca"
  end
  language "cs" do
    sha256 "605c7685a6596499da48c6ef2819f60bb62a2a3976008699dbb22adc96283a3b"
    "cs"
  end
  language "de" do
    sha256 "8f3af915b59e3054d27cfa6b10557d4705b4f09947fb8cfebbb3b3dfcf289a94"
    "de"
  end
  language "en-CA" do
    sha256 "7a2ab0fafe70a445684df3a8046cc097b765cca65e77517eaeb2a9292135bb88"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1c34944b01bcab792cffe1c2b09f2e830a5f3d804bd24b84467102b2822f299e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b58d317440f6178182cab7ad919346b39a701e37bc2fbc73d2f1cf9c4ecbf75f"
    "en-US"
  end
  language "es" do
    sha256 "94d0a5b98a1260af99739c1d1f24e540804eea947c1e299fff8a5654f2dce1c5"
    "es-ES"
  end
  language "fr" do
    sha256 "128724172e1afcbc269e6f846406da619d4b571f0b800d12a4fc840d0c286607"
    "fr"
  end
  language "it" do
    sha256 "e50ae5ff186cdbf781c417bb8fec6d4d42ef0c87ae9624be7803cc6e8a6cdb25"
    "it"
  end
  language "ja" do
    sha256 "3ce82fecf11db231a5356f4cdc848cc17942a618d035622021ca6b229b6c890d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "befc6971a16d13e85bddfb0e048df0a9b653ece5ed0c1d7e21e9da54f404ab2a"
    "ko"
  end
  language "nl" do
    sha256 "e9e0e928186a3c229daa675b5849453c32d2f915183a1ec5abbfc9855c114a7f"
    "nl"
  end
  language "pt-BR" do
    sha256 "eca09936556f8df5599a8f738532dca42cf036db85135c0ab5decb9699f5f1a8"
    "pt-BR"
  end
  language "ru" do
    sha256 "e21ec3bdafb72abe6b9e395e3dba49ba14dd22fb509787b5e0ca758612f5043d"
    "ru"
  end
  language "uk" do
    sha256 "af8191ded22e0e9b94bbcac0e9359d7e849947c8eba6e7fd51fee6515631f76e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ea316ba3b7bbaef76566674a8e5a973fe505e717c531cb2b167b71c8d1562b66"
    "zh-TW"
  end
  language "zh" do
    sha256 "220be8b843ffb81f97b38d5ec9a3113201d26f255fd3c1225018fe97f6070d9e"
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
