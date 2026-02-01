cask "firefox@nightly" do
  version "149.0a1,2026-02-01-09-03-14"

  language "ca" do
    sha256 "a98ea8722a414f23d00112332025fc249ba9ec717ce9a79c752c4e928f8f5d66"
    "ca"
  end
  language "cs" do
    sha256 "7d2ce37d73047062eda86302834ea8aebb782759dbe40b6feb51dd9a972cdc56"
    "cs"
  end
  language "de" do
    sha256 "68480be743dee1e197d78e982a2dc7821e85c7cb91b261aafbc84a10c62e0499"
    "de"
  end
  language "en-CA" do
    sha256 "b22435debf133ebac7efbe6db94aace982f050cd2d7d42fe211380e355f9f609"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fa6f98db4b42b87d723424f19efacfb6b53aa6ec8c0544ddf72b8dba4151b4e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b0dbd629ff885d469196c19961fc8fc3a7f908f11f2a0bd4c2c5ac93084eb09"
    "en-US"
  end
  language "es" do
    sha256 "43dd5492d2fad844f7094a6e2cd14c1418c4c8e925e33462d3988e0b866823ae"
    "es-ES"
  end
  language "fr" do
    sha256 "faff271ed507ffcda7f53ebda2f8efb3d21b3b0db9a0ec332ac8826e7439c05c"
    "fr"
  end
  language "it" do
    sha256 "9030f8932323b4525121d09e5235ac3e3fa32b1abbb85f12ef8ac95c7fe6da10"
    "it"
  end
  language "ja" do
    sha256 "a8d4b2370aa17fbae25e0ccb866efb9278346db5dc6309050ba5c5dc61c9aa32"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bdeb1274805d883058f673ff4a4e04c96ff9377cb047699f5bf8a5929b9a71f8"
    "ko"
  end
  language "nl" do
    sha256 "205cebe10bbea2bcc35eff31a01eb285042f95d56719669e914d13dcb4feb2f3"
    "nl"
  end
  language "pt-BR" do
    sha256 "60a592069b711db4576a62e3e3b36caf7e9570cfa3ba83fb3fa6b6af32db8316"
    "pt-BR"
  end
  language "ru" do
    sha256 "9851e1f74586cd8bcfabd46bdb59c7c00b3dbbad52566af277cc866e8ddda98f"
    "ru"
  end
  language "uk" do
    sha256 "877485a44029d61596dd6e91071aa05d01c259f07b6b26d75e2ad9cfd2d431b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "a0004a656345bd9eb87774f51e01751783bae802c3cf40b66a923768f1b70b3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "105c208d93a3236914b01669a3eaf2be630b66d9427edb7cbe75b94ed6199ad3"
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
