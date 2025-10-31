cask "firefox@nightly" do
  version "146.0a1,2025-10-31-04-26-38"

  language "ca" do
    sha256 "300f4fc09600f76f602023db33f779618967bb05cedf69a3e443d9fd301bfce7"
    "ca"
  end
  language "cs" do
    sha256 "03f1eb9a537b2d2b37f8e84e27d913fc101dc33bf2c8cc691b2c9ea31548a487"
    "cs"
  end
  language "de" do
    sha256 "26c88e3604de2726f3b49fba47a36eea769b71b8a96bf4dcfe9305c0dd5ffe76"
    "de"
  end
  language "en-CA" do
    sha256 "3c9bad8cf981548de6358340c93886b30a488f7a3e03a8f8e1569d126b9a4e0a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "892965f67eed61547e2934ae3695c0b988b43799cb7ee31fa62d0d82043f20be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e7feea1b1f1b60c287c6a9978bc30d3996925de08c02042d0006739474cb591"
    "en-US"
  end
  language "es" do
    sha256 "2cd6e997f8ca5e23e96894c3095eb169d7ee2248a803df9edad443203a227061"
    "es-ES"
  end
  language "fr" do
    sha256 "56a28af656cb90471f4516bb11ae27dbccefa7203eb85e57f813d722eaef4f3a"
    "fr"
  end
  language "it" do
    sha256 "bfafabffbce8445ade1dcd9fb2796d7214b2f6efa76ada9550b597d28e34e63e"
    "it"
  end
  language "ja" do
    sha256 "a870c51c564597b26595dd30c3befdd53a1feaee4568c4d9328dad5193db2832"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ef27527e07e300fb025eaea0297c27acbd69872c028ec9338355214d356081d6"
    "ko"
  end
  language "nl" do
    sha256 "2aadda63989d037aa9c2a8c23472a8a6bb134767cfd65663ea0b317b6b63e950"
    "nl"
  end
  language "pt-BR" do
    sha256 "d5a27769e3c38f7b97c23d437a2afdfb32328c3e6aa93b2290d18dc428ca86de"
    "pt-BR"
  end
  language "ru" do
    sha256 "0463956f9dd4342f1b309e5bcc554bf5313ac5cc6a5caee827bc0e93f1b5d7e6"
    "ru"
  end
  language "uk" do
    sha256 "9913b6c459462db0bae832a9fe28da5dd6e7989837238c182ec15641157988b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d9a6cf0392e9410f27b4f5e328c869e04c4d0f72dffbe01bb1dc6b8a92b8f1d"
    "zh-TW"
  end
  language "zh" do
    sha256 "137b8488d25c6a297ed68d7ecee42ef0676d39b703bba73d194335ec4151e815"
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
