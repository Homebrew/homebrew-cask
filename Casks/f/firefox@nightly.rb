cask "firefox@nightly" do
  version "145.0a1,2025-09-18-21-30-23"

  language "ca" do
    sha256 "c1e35d89311d6112363e7559b6c9e4c8b4b338d9d7175a96190243e7261b30b5"
    "ca"
  end
  language "cs" do
    sha256 "47c29bc9faa193875ebb8c713d3790fa1f14df46b3becf55356d338236dfe09a"
    "cs"
  end
  language "de" do
    sha256 "9e1678068684aca92384da22d01daf15ed3baaf02e7fa589c6c37f72b64766ff"
    "de"
  end
  language "en-CA" do
    sha256 "99b109e513ccf12258d6ce298df3559270527e96ba5f894996e107813ddf2fd8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02cece66a787dcd0ec2ca4d1a980efcdd65176e34c0380ba7ed9d0d94c2fd1e1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e7a40e552ccb42156f16999648ff4967e8c3080d36726c1269f2f3a9b393f1e5"
    "en-US"
  end
  language "es" do
    sha256 "8499fa4f43bc8eadff3214294f37bb119d863bd280504cbf35d97c8c43ee4dab"
    "es-ES"
  end
  language "fr" do
    sha256 "8d3f6da55b4a16ada8f017619ed18f0034ffd5bb99202d14a022642bf7eb234b"
    "fr"
  end
  language "it" do
    sha256 "77f98a34e4dea5be918c71fea5a324dbc92826778cf9e74a0782cc6734f148c2"
    "it"
  end
  language "ja" do
    sha256 "1d9b326ce4547bad9f3f760e3b459a8f00bee1b62785a21cdb5f83628ff46137"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "97704ab7a4f6d44182c8c55e0af5c44d980d717278f1a6b1be6602d5ae29f0c5"
    "ko"
  end
  language "nl" do
    sha256 "42499fe0dc6b767f8afdf4ad2d489883e8e286f1542668967c288e2fd9ac320c"
    "nl"
  end
  language "pt-BR" do
    sha256 "b21c0b8529305730061ebed0c76d2f26fc40bbb4b1f24fad5f82539b4097eafd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7c2afd0efa04fcf710caf3e1e855e207cbff4686510eb570d9478ed0ce0630b2"
    "ru"
  end
  language "uk" do
    sha256 "5f182cf410d219d4f2c26a82bb995f3e12f348a2058517074103e6fca9864bf7"
    "uk"
  end
  language "zh-TW" do
    sha256 "31067bf1cb38b73237ad48bae4759c7e91952cca55f41c5fe03447c6c560f6d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e9706740f95abc37596e7af742c7d0adc021225ce1a058d1d001f06ba8cc8e8"
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
