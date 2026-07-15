cask "firefox@nightly" do
  version "154.0a1,2026-07-15-09-30-11"

  language "ca" do
    sha256 "2fbf4f78bed30df7bd19e781042acd646984ff697cfcb2d3f38abd340b87f511"
    "ca"
  end
  language "cs" do
    sha256 "ef864aae354e18c87bb6494a0c6c323b310307b6a368c1c6a2b22a170cc38462"
    "cs"
  end
  language "de" do
    sha256 "0141759ed03dd2e13dddab77487f69cf05d51acbee8fc08f751cfe6f79dad8ac"
    "de"
  end
  language "en-CA" do
    sha256 "a9892f05af569e6148b1c8502cd77399b00f66230e4ec708c7fb8f11e0e97049"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4763b1475cfe579312bb93c7132d12d7a661063bb8b37183b0be852e483be75e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7756393682a8de4aff5eafe86b9718f25a8643559ef0d719e88547a7c51a3336"
    "en-US"
  end
  language "es" do
    sha256 "c32606aaa97f0a7b88af697bdea96224ffe97106f763885e6537f1901ed4b0be"
    "es-ES"
  end
  language "fr" do
    sha256 "ea89bc9af7d1c93ccb8a21de381117e10fa9ba7a9bc53841086b1a566b01cfc3"
    "fr"
  end
  language "it" do
    sha256 "852664d12750d986768cc8436513dfdff34a8e853cbd0aca9fc18967ed15e16e"
    "it"
  end
  language "ja" do
    sha256 "945b1e64be64606651197e8436a258c806e1d13f3a6ff59ee00c5747700ba509"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0ca5389fc0b3509ad0c373bbac366c7f8c51ce2ddc6ae186681884be15270235"
    "ko"
  end
  language "nl" do
    sha256 "8f2fb6e6cefb13b6d81dd7c36e0cada0cdb6a1235ca90d800b41abba5e528d08"
    "nl"
  end
  language "pt-BR" do
    sha256 "47f66f1a8c416c61527b0ea3e65bf5bdda03404fd1de1e66b547d1b3717ffe00"
    "pt-BR"
  end
  language "ru" do
    sha256 "1b165d3909bf3f3e10923368c1932ddd69b52388eb66a5338e9704440c99effe"
    "ru"
  end
  language "uk" do
    sha256 "f2bd7392c931de24879c5fb7713b3f162259bb9e7c6af896328c0c535cce36c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "30d20f1867b073570906dbe7cf0f92bb11ec08bd3c9dc8f80b4bc93b339b77fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "63b71618ef64dd6e87beb10942445d5b91408dfe0bd3e43ba88eebb9c2ade8c2"
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
