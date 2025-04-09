cask "firefox@nightly" do
  version "139.0a1,2025-04-08-21-22-25"

  language "ca" do
    sha256 "a7618a8207405b6bb88c0b450bf5ba918d7ec7219bd314184ac45a462351782f"
    "ca"
  end
  language "cs" do
    sha256 "4dba505220651e3bec0f119f5626739063c3cc8e00af9e80377f80464d87774b"
    "cs"
  end
  language "de" do
    sha256 "51d958295f4e6b26a8b9b8ea564814042d002c52d9cd27bc8d9bf7955231995a"
    "de"
  end
  language "en-CA" do
    sha256 "e1cd6be3f1229aaa645cbe59ff3311826b82fa362b33000cd650257c5fa77a8f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3a44d6cf77b879eb14c318d499a1bd6b31445621740b62f0fd1fc63284505953"
    "en-GB"
  end
  language "en", default: true do
    sha256 "efb83e29fce66adcab860afa50cf143156325c272beb60e7a53e3878acd5033a"
    "en-US"
  end
  language "es" do
    sha256 "2ec540b6b15474692547241480a7211c903389fc43a47679ae890423082b79ff"
    "es-ES"
  end
  language "fr" do
    sha256 "31362e6ad70becd2b5034abf80ea3d4c8d56d9d554ffe65cc8083cb34d0d8129"
    "fr"
  end
  language "it" do
    sha256 "8c9533ea85558ed004a159a67e6dd3a0f020c4086ace5c8150c5f1e1968404f3"
    "it"
  end
  language "ja" do
    sha256 "b88d22ab5926bceedc3add32f6c6b0565abc14529994fad636888dbbf07da0df"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a7d1df781987b5b850544d94bb2455e58159d190de2880102c145e52c31f11e2"
    "ko"
  end
  language "nl" do
    sha256 "1ee6d1da612cc3bd3b85796617ed8f1d8f85977e4e4b4b149ab976a15d067302"
    "nl"
  end
  language "pt-BR" do
    sha256 "1e7fc328ecf7d83bbcaab8552d432b7f1439238c159337b7f49806de7e77966e"
    "pt-BR"
  end
  language "ru" do
    sha256 "bb5e4cddd53255d06a387bf7857cdfd736ba15f287fd1d3d29f9e6c3c1e2dcaf"
    "ru"
  end
  language "uk" do
    sha256 "e752e77ab1338ababd212ec1c3462e174027c539b85e2e553b31fb4d6802d803"
    "uk"
  end
  language "zh-TW" do
    sha256 "2cd0a9bb327d1b43e2eecaeba39e377b854c24aebf5a8cb61b4584778322292a"
    "zh-TW"
  end
  language "zh" do
    sha256 "7209920b084259e9155555d7d6352006c9b9b1fba877854ac15303bcb7d12c23"
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
  depends_on macos: ">= :catalina"

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
