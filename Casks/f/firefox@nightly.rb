cask "firefox@nightly" do
  version "158.0a1,2026-09-15-21-39-02"

  language "ca" do
    sha256 "72357914728ffe2dc2b3ee10ebc74d772528827c4c65156852499449e589d251"
    "ca"
  end
  language "cs" do
    sha256 "7faab602b9da750631bbb5f7b26e3cfdee4a27403adfd0e59fbf5b3d72a43fd8"
    "cs"
  end
  language "de" do
    sha256 "5f33c68571a2f35f5816bdbc1cd2b130741f00ca630264f792852cd770bf2261"
    "de"
  end
  language "en-CA" do
    sha256 "4fb2f45376b23c91ccc628fbb46ad5912fdccd9f18abffd7d8d356712615a9c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7cfad67da16f0d306f92d910106b4f669f1a6e786e621f37140db2b9c7e4d2ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "32f5ee21581a711e487ca700fcb9273ab50ca8409fb651b4fcd9b7dbe0ff5b28"
    "en-US"
  end
  language "es" do
    sha256 "f835954f5ae5b494feea19fe383ae7d7cfa0631947a300100f6582e199ffe7b3"
    "es-ES"
  end
  language "fr" do
    sha256 "d7addfee7e0d6904dee87d935fcf4fc94afc65743cc4fceb31ca5778ef5aec8a"
    "fr"
  end
  language "it" do
    sha256 "d99d39ce12f348d97a420186adaaee9fb6a05877bf3811b323c4d6c9272ad138"
    "it"
  end
  language "ja" do
    sha256 "1ae503c1ecbb1f4c00c63f7a3a0106454ff872fafa7a7342f4651e919ab0f3bb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a9921c365fa72ea4fb7397e6370a4cb25199e65ca06ab480c5bacc45e3daea0"
    "ko"
  end
  language "nl" do
    sha256 "0e55660ecfb44c741ba2ec00e01637247681bb07003ae60637cc98624193d4e1"
    "nl"
  end
  language "pt-BR" do
    sha256 "04fe4a82789a089c41e6dc9e2e23e9c1ca6c47e154b8404705904977f693cf7e"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b53d0f9932a67f98df7662c60af0ff0b739613b2a8e2324487d91b7adc3204e"
    "ru"
  end
  language "uk" do
    sha256 "d879d6014b2a5877c5b7737a3b7c0393067d3bf16a99e9c734754a6f4f7a6a4f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b1d2faede82d229d10579ae4d1d652122aa58e18638b8ec4181d8c61c5048864"
    "zh-TW"
  end
  language "zh" do
    sha256 "1d1d876cdc69abeeac4b4c235d15ffcaa006a54d570d419ddb4e7cb9811836ed"
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
