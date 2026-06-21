cask "firefox@nightly" do
  version "154.0a1,2026-06-21-08-08-54"

  language "ca" do
    sha256 "5d31686e31d6dd77da07905b686b93c28223f818203c9daf2d180aa79737a12e"
    "ca"
  end
  language "cs" do
    sha256 "77f29f59a1bb165538723bcc4e1f29226b188ed0d9667b42257b000c9bbfe442"
    "cs"
  end
  language "de" do
    sha256 "2c31f57d1368e62098f2bf3d23eccdd3d3028d9b96625ebf346e2f12526761fb"
    "de"
  end
  language "en-CA" do
    sha256 "93d68c5115f61ba95a0cd3e64375cc1066b645a5edd66de426126abbc836df56"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9a30698fa9dc54a4c3f29e2dac1a9155dc850a67b620e26a71f3c65905c111b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "048d5eea6dc0b8559e00bf7a1cabb897632c7969609f5dffb8becb27a1a1d459"
    "en-US"
  end
  language "es" do
    sha256 "a65e91e4f47f7986308dce5eaf4cbaa2142824407e5037a9f8a191cd16466f40"
    "es-ES"
  end
  language "fr" do
    sha256 "d71dff30270a94c7dc71ab19bae66102261bff339a157f1227d2279d15928692"
    "fr"
  end
  language "it" do
    sha256 "2861795dcb4420cc0886ce639778f6b6bf7f1d5be19c5174a2805d046a2899ab"
    "it"
  end
  language "ja" do
    sha256 "2dd0ee07d159fae7711180918cb175e04089476a166762954bea2c35181814fe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2749c8b7548eeac481245b191fd6cdcb00eafab3fde7ba509544fdf18afb4db5"
    "ko"
  end
  language "nl" do
    sha256 "26d0aa22afe84b6fd99e4aa91f135cd12cd87df71925f6ee08e02551e7754275"
    "nl"
  end
  language "pt-BR" do
    sha256 "3ef619b0d54d9375c6ef9d4815d2f2326930ce7684f7db75b96398ddd66fcc6f"
    "pt-BR"
  end
  language "ru" do
    sha256 "8efb194bf495de55bad040e90ba6227e325fa7fc80cf74cca4e8f5fb71fd26ea"
    "ru"
  end
  language "uk" do
    sha256 "db9c1563a263d8434efc3a78312ff859630019903d24c732db8b553d783a768a"
    "uk"
  end
  language "zh-TW" do
    sha256 "abe8b6c2dd1aa85960879b5232125c685fc8926e74965b4e9a48fccc69486827"
    "zh-TW"
  end
  language "zh" do
    sha256 "bedd80d54676b9ef637e83c4baaa7c36da84fb83018c14167f1656b65f61eef7"
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
