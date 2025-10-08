cask "firefox@nightly" do
  version "145.0a1,2025-10-07-21-39-23"

  language "ca" do
    sha256 "2580827837610b2ccd189051920beb0a3ceb99c64d414061cf0c1a1c90b2dfe7"
    "ca"
  end
  language "cs" do
    sha256 "c42a55975e9e5b528b68ddbf8362924010d2c50e9d544940c57f982787640227"
    "cs"
  end
  language "de" do
    sha256 "28bae69b4a27d78ff9ded572cd7b49159ac67eb4e02e75bcc0e8f6c9f22b88d0"
    "de"
  end
  language "en-CA" do
    sha256 "99894e78b2c38a3386e87c202fc7d39b47e204a8e1371054fc23f137a69d980a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed235766afcb75b7c07637404036f0bd233dbec37f3c0213e402c57dd5510047"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e50f9d4e56350da9666abfcfc09646bea760994e7d8e9b9a06ce9199c2284dd"
    "en-US"
  end
  language "es" do
    sha256 "7f086e8a9d83b47ad3516846d674170efd44b4330a29d91754e2571a03446b08"
    "es-ES"
  end
  language "fr" do
    sha256 "176b83d56b7da931becf3a8c20795ed353a0b15d1993e33344ecb77342eba2b7"
    "fr"
  end
  language "it" do
    sha256 "518d9081f5c4d9ebdd39bfc3b38ff3b9a7a2b7cf20f21f64ac818021cc56a7c4"
    "it"
  end
  language "ja" do
    sha256 "44fd7fa846d3707525dd5a3c86c6bd520acbb4173ff2cec1811c04fc043eb7fc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e1e6f405650bcf72b240ade5da722fbba068fec8c6e47c39f3bd13175a05fffa"
    "ko"
  end
  language "nl" do
    sha256 "4e162314f75db3ed564d416d9a592f5f2ca4aca10b2df8bf886932735c74cd44"
    "nl"
  end
  language "pt-BR" do
    sha256 "ed43dd80ee8304bc60096e1756bd1c50c66f218c5c42b67f5a5b06355727825f"
    "pt-BR"
  end
  language "ru" do
    sha256 "e12ad91368934952c35f7811761421ea9c2c1cb9ab100ca93b3dc183096b01ac"
    "ru"
  end
  language "uk" do
    sha256 "a49f1fd33842a6aec722bb1f1ec53a5c39bcd1b2b4755bb43187a2a707c47e61"
    "uk"
  end
  language "zh-TW" do
    sha256 "58348cbdd51901137d41416ac0faf2df4c6c4f9a316e6c1ff62b7e07d63179ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "6aea8fe1545f14fc504284d18c5d8f9ae38296c32038e0980af57b466764bc4c"
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
