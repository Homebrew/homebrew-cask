cask "firefox@nightly" do
  version "151.0a1,2026-04-04-20-21-45"

  language "ca" do
    sha256 "5ac7ef09e3623c36eab02f0c0942c8c7536efda8c2b0f79ac9be5b520ba81970"
    "ca"
  end
  language "cs" do
    sha256 "ca6c911e0ba555f68abb1e4ae5c0a5a2036cfdab7c57426f5196d80ba07aa5ea"
    "cs"
  end
  language "de" do
    sha256 "7f0704e4400843a59aaac2caaf0ded723df7b677744053eeac166330f8f966f6"
    "de"
  end
  language "en-CA" do
    sha256 "0d0d5418f11a19e5ea1c9cc4de4c40c00ce3b5a1c4e97871c5f4d83541ec7f74"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7aef5a75e2226d192a02e99e807fabd8b3b4bbba674e75b15767ce5cc2e8891d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e5c72014c7884d8ffdbccaffd6da9bbf37085a0ebaec0e3eb5362ca7083e7527"
    "en-US"
  end
  language "es" do
    sha256 "543fa62f71ca425120b5cf01614c1de5188cf41b52996fbcce426754d123c85a"
    "es-ES"
  end
  language "fr" do
    sha256 "a46096cb91d8dbf1bccfc98fba79d2187b611af8fc8998cda67bcd09f2535472"
    "fr"
  end
  language "it" do
    sha256 "6def569748331403905b2528ef04b46c0e78257c40e3bed45513c31cec83d1d7"
    "it"
  end
  language "ja" do
    sha256 "085954ba82ade181656c71d19d67daf729c83803794912260e6069c5597ce14d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68325650daaca0d905d2b30c4d570885c394d5af551ff74e11322d8dd1ce8e7b"
    "ko"
  end
  language "nl" do
    sha256 "83853811608678a534e8ef366b42491f364b52708314aa24a8bb244a946818e7"
    "nl"
  end
  language "pt-BR" do
    sha256 "eac418595bfdba14c2b154388c13107ca47d039bf15c1d69370ac5432f659bb5"
    "pt-BR"
  end
  language "ru" do
    sha256 "765ff47ccd8b6c4875b6251881131c70a1efe08b4fd0c8061082134596a0155a"
    "ru"
  end
  language "uk" do
    sha256 "da8d9231fb479bdec55704974ad7f818af1b332fab7940be9717bdcb25f9b83e"
    "uk"
  end
  language "zh-TW" do
    sha256 "d8a0c6837436101b708ca426efdf755b5665e78e29008665bf46f185af65d370"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f3c1eace223b8b11d1974350494a3ceb86e4c59553501d5ebd6a9aff0a73975"
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
