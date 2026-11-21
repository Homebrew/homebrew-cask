cask "firefox@nightly" do
  version "163.0a1,2026-11-20-21-34-02"

  language "ca" do
    sha256 "0a94a63a9466f0e9aa91052957d6d3dbcc9dae06df850a0aec7864bc22626374"
    "ca"
  end
  language "cs" do
    sha256 "dff83cef68a35ada1569effcb36a4bebeee25fac5408dfb78dd1b976ed2632f6"
    "cs"
  end
  language "de" do
    sha256 "6c28f2ba1113c7f34c82d2a462effc3f5be60a927f4ddc2808f6f0a6c0bfbcad"
    "de"
  end
  language "en-CA" do
    sha256 "b857dd5ae9fda2831a8fcca8289cbca24624323658c24d139b4fba379b9c7c91"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2962c10b988502a47725ac908ee6aa4081436b232abd8b33bebc0d7feb462e34"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb2319f2809d998d4962e2babad4f28162d40a3b87bf38e1344866c086457395"
    "en-US"
  end
  language "es" do
    sha256 "2fb38b160aefa04388f1cb50c2cf98e4d6e4a18f44e71a7f7c324e6c188a75f6"
    "es-ES"
  end
  language "fr" do
    sha256 "b36b369d246e3289f82040865bdf80e793b4898a9e8da2915c7d90b2ed337556"
    "fr"
  end
  language "it" do
    sha256 "be0a87246e693e961c2d9d8377e9d3dc2d1755702108cf3bc8b95ad5029ed45b"
    "it"
  end
  language "ja" do
    sha256 "efb50b15715cc2a1cf0ebd84d004d4f68274e70862421317e731ad5d820439d1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "589c31aaef9d856be12f099dbc4f2f745aaceda3836619f43e6d37d17ab902e3"
    "ko"
  end
  language "nl" do
    sha256 "be58f2fe533204527158311ac427602cf357acfeb024d4a5383dc4a17acc78b4"
    "nl"
  end
  language "pt-BR" do
    sha256 "b0a1e7cacce82018fd691a99a4f83d228bc15c14ddee124b986d51fe21961d37"
    "pt-BR"
  end
  language "ru" do
    sha256 "c0fb819017c567eac0ca4702cf5431a81fb0279d7a4adca4c5997c70b6b64883"
    "ru"
  end
  language "uk" do
    sha256 "85ae823f1de0092477d7f6803a8e58f63465f9f371f346242bc93937a9cc8688"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1c06fe6a11470262d57b82b6347d65cf0448f7991adfdce03697c666d60c88c"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d0c0a84611746ab77029bdfd830a5ebc899557e7859fe68294c323e8430c040"
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
