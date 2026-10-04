cask "firefox@nightly" do
  version "159.0a1,2026-10-03-21-08-03"

  language "ca" do
    sha256 "e044903a9d0325bc2be63131357bee2e287acf53109a9ec3510d22b84d82726e"
    "ca"
  end
  language "cs" do
    sha256 "f4d46561ab3a6b47d51490c71939bd4dd43dab5ede13c54a3a7bb9396de4771a"
    "cs"
  end
  language "de" do
    sha256 "a18690c9ccc6d8cb842df89a561a37931eb3590f9aa4adfe6d26bdd29fec1826"
    "de"
  end
  language "en-CA" do
    sha256 "35e324b8b24f5be5ebcd4b25d139ac6754f6861a7964703b6f2c123df7fb76dc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4859208b828c1f030ef963956d92a2b32be41c03a3dd21fd104d57878a2eea8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5d5077a81278421145796c271464728cf8f7a47118b8f0a973109eb99677eba0"
    "en-US"
  end
  language "es" do
    sha256 "3cbc20f36d2aa6d83f9b9de811c94abb99bec43af870ea91ef09eac4a902dfeb"
    "es-ES"
  end
  language "fr" do
    sha256 "0b501e0571653e521896d34c852dfe59e421579f7101312b738e8dbd574058a0"
    "fr"
  end
  language "it" do
    sha256 "3ee0cd50f005965caf623352c5476131cabbd38be4ebbc3938fbd6592d9813f4"
    "it"
  end
  language "ja" do
    sha256 "dce4db0c2bd65fef4fa2ca35300284759bde920ea58c9fccb25189c6e32c77bf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "56d48c627a2261e1a20a808c6c74f1e799f0116693fba7d61418633f214aca6a"
    "ko"
  end
  language "nl" do
    sha256 "c56612a7f8713098677b955a0682f1b3a4b1d0ea36173c748a18732d3b75bc64"
    "nl"
  end
  language "pt-BR" do
    sha256 "37eb5839d0b379b6d2b72b5d3c2410e06ce018029fd89586fb10a3e4a844f5fb"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd04c42d10efaccf4b8ca68173f8292afa69c4f75cc872ce2c1322448eb83587"
    "ru"
  end
  language "uk" do
    sha256 "255c37e70e920d41a4a755de9d9191b5126e94a72b89fabcb2f30ed1d14c6e92"
    "uk"
  end
  language "zh-TW" do
    sha256 "6e0871d2fc05594da04bafbfaab9408325c4312e8848ca52f0e670ce4126357d"
    "zh-TW"
  end
  language "zh" do
    sha256 "83e37beccc40d1ddf6caa97ac22ed8e4de6bd6e1f46348e0c4fdb2fc37c5a34b"
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
