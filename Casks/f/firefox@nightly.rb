cask "firefox@nightly" do
  version "151.0a1,2026-04-10-21-13-35"

  language "ca" do
    sha256 "6820055f448d2f3e2aa62993893da21334d8801bb2080c7b7fb03f42d6667272"
    "ca"
  end
  language "cs" do
    sha256 "2c5c170f3ad095f747fe1abb7c5629e5e54cd5dedaf49a9dd1f3cad64420c7ef"
    "cs"
  end
  language "de" do
    sha256 "56c3da2f6860a85097d6cd5199b9c68a5b18086b34ac7f475a19fc22e0c3638c"
    "de"
  end
  language "en-CA" do
    sha256 "5165fe4a9e4c07ddaa50c9cd67aca8b77c00f77e079ecb7d7c732d7b9d2a5f20"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b004df0edbed17feafb0fe1ceab8d8f198aaa975604ac50558a2ad2657c0435"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c0143200c85bebd221dd2f19c0e4e22e317956d64abd073350cd7c96a21ea858"
    "en-US"
  end
  language "es" do
    sha256 "f6fc502bb4d987a2c364a34ed0953e0d31a865565f0249388b3e53f622a58df1"
    "es-ES"
  end
  language "fr" do
    sha256 "1009b609caa41804acda15de879ea4d71942fd01cca6c7382cfecd6636357c3c"
    "fr"
  end
  language "it" do
    sha256 "0efdcf33811d32376102db18d4f764f4f36d9f8c520e55e2f7e10a5af1a2d5d5"
    "it"
  end
  language "ja" do
    sha256 "4151da3f2014d8d6a0e7b0b9ace58614ceff316811308aec502b0669bb98fc54"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f3d52fa36e49d7aba27c1da68d51f7fef7456eb9ceba7b35ed8510647d51cfca"
    "ko"
  end
  language "nl" do
    sha256 "b0439194ee13ae7bf50a422bb1417c3f12086bc6937fa50c04a83cdc4efada5f"
    "nl"
  end
  language "pt-BR" do
    sha256 "06b4f5d01336baef7bb03f45dbe8310ac270abd262e9629be475f99165458391"
    "pt-BR"
  end
  language "ru" do
    sha256 "e967a5f1b91ffebf207d6061910ac623e5966b116f0fe8bc5f35021e5c6d57b0"
    "ru"
  end
  language "uk" do
    sha256 "e3b47045f45fe619e1a5888c6084db2746907fab84f8354d82ffb9280a893f5c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a98e4deeb43e20551161f6ad0167eb3e2b87a601aafcb18a458707a4c5e0a57"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa16be9df7087660d7911a25496fd21b1b25d261f50af1e40ab4efba3a4a885a"
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
