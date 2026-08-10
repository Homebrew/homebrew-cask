cask "firefox@nightly" do
  version "155.0a1,2026-08-09-21-46-38"

  language "ca" do
    sha256 "92ae92825426eed4c86b006dc5ef5ce723af90cb0bec944cacce8e025ca69aef"
    "ca"
  end
  language "cs" do
    sha256 "417f2df7f9feaa54f1d7914ae05cfdf1e2d73785c83c8bb22d4ec5df4711cda2"
    "cs"
  end
  language "de" do
    sha256 "6c02ea74079c294bfb60ad7a9f24cb98d89d68188bad81d51f6fc79b62791a3d"
    "de"
  end
  language "en-CA" do
    sha256 "557bc258653863bccea0f0e606553e4c3c7ce24a2b0d1bf3702d4b2657d54062"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e11f4b82c23aba3116ecdd9b0399ee87aa376e5d64b0754b031168d7624ff546"
    "en-GB"
  end
  language "en", default: true do
    sha256 "948e5d6d5d1df11598e447a790a5ffdfe4977bc9d0a0207412260f9f46a4f8fa"
    "en-US"
  end
  language "es" do
    sha256 "4c3f55143f36f0778539ac6c298f1cf073c4e630efbceb9d6a686961c94064cf"
    "es-ES"
  end
  language "fr" do
    sha256 "adeeabf6532da4354eee7c0e98af324a253f35c91598e79a65d564f860d7e585"
    "fr"
  end
  language "it" do
    sha256 "34103f78290aa53492b1ab0e2ec145a4190545ae4b7e842bc0ff267532b823f6"
    "it"
  end
  language "ja" do
    sha256 "7298e382c9b563240588dff64fd08ee2c706d0fe5e06b959ec93390e40a78673"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b52a8febebf63cbbe46f85f381473b3c689a03f5a42a06702b20c6392af1f1d7"
    "ko"
  end
  language "nl" do
    sha256 "9e808b8e6e57f68aa69cebbdeddd952a089615baf7aa2c50da6c0ea3dfd0186f"
    "nl"
  end
  language "pt-BR" do
    sha256 "6f233cd30f4681adfffb0638baef1a882b6fa5c294e716b77620244b298e27bc"
    "pt-BR"
  end
  language "ru" do
    sha256 "557bdf65b6d56bd1933793f67458dfea7c1756a5753bf2ff07f27a8c11010e88"
    "ru"
  end
  language "uk" do
    sha256 "74d3b9d001a50771cf2ec4e8ed5bc1529050e74b5e399fb04e852520f395ee80"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cea144c7c9c1fe273cff1fc46646fc0a212fa2b86e5591aa1c07ad628094c16"
    "zh-TW"
  end
  language "zh" do
    sha256 "e86f0232bff0323399aeff514e37711745aaecd8fde1cfef5c4ec4ad3fe2b436"
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
