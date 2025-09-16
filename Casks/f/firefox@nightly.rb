cask "firefox@nightly" do
  version "145.0a1,2025-09-16-09-04-45"

  language "ca" do
    sha256 "f8dcf11f66fcec123fadb1ef39bcf994b53a9f6d1a5b38d6f3036d60b33c934e"
    "ca"
  end
  language "cs" do
    sha256 "b6f8a6f7ae70d598ff025da9f8cf7322244fcc47194e16fa4ee7f150bff94a63"
    "cs"
  end
  language "de" do
    sha256 "b235c90140757ac63b2e38e01abc36fe83c89741c1b032813c33124a4159539c"
    "de"
  end
  language "en-CA" do
    sha256 "945709ec4f210315fb872f759bc5c4a9f7a87df9d3c045938788bbe07533d21f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "45234ed88be2e2bc7eef6ea664f745fe04c033411859f228204f85db3042af67"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb7baa7f6185f56d46b0643916deea184866873586d051dd75df6619d07e4b12"
    "en-US"
  end
  language "es" do
    sha256 "b26e0592fa9669a7baa099b0c25983c2e84bc340ddf0b3ccf9ad709e19c74b67"
    "es-ES"
  end
  language "fr" do
    sha256 "862740edd3095240342c85567cf05ad86bb9f51b9227f3118ea929c6e93595c1"
    "fr"
  end
  language "it" do
    sha256 "98398bed8d9df34012b72b71077e7eb0542e95eed637a04db0af8f0054d1ffae"
    "it"
  end
  language "ja" do
    sha256 "c57289e514c609000873eddaab8eb5784d21b74830d6a7289a0e779cf8870b3c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7e3bb131d7b8d0cd7768a5b47f0748652623e06c82692ad1dae509e55f6c386f"
    "ko"
  end
  language "nl" do
    sha256 "af55052cf931f0f6bae36423da2fd3ad149202bff8e842aacfae919d4c7e9585"
    "nl"
  end
  language "pt-BR" do
    sha256 "ecc1621add0329581e09c73f76abe59715dfe28894d29251d8a4620c5f5e3a77"
    "pt-BR"
  end
  language "ru" do
    sha256 "47f19f673200ec37e18676be957ce52f4462cde520af0a659448222d75585710"
    "ru"
  end
  language "uk" do
    sha256 "d91b643836df94a6fcfcd91c401043c5bceaca795bbc7bf5ee86742540f98843"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4ce940c6a9beb6a046c14f1eb51bc389cfb7e5600f92a7bc9e2b0795c88964b"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc3dccddcae5a73ff70b0c8ffeccc56a78b25df46c9ea6e1de472cf8b6fdacc5"
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
