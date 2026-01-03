cask "firefox@nightly" do
  version "148.0a1,2026-01-03-08-51-32"

  language "ca" do
    sha256 "8b4f4cca0ceabb32063c18548920c8f9fe96d22f5df40efb818189d46c6dde18"
    "ca"
  end
  language "cs" do
    sha256 "34abf7d806815c1771a7b292177ce34fe6de6003be632b3ff231db51eec1d1a1"
    "cs"
  end
  language "de" do
    sha256 "2e4d4b22d5b7b6eb98463359530f6e28101f574fea749711a15be705567187c8"
    "de"
  end
  language "en-CA" do
    sha256 "fd59ace27e9f76ee335f40a92f6a1fdaf1b7db2c82b4e2370a4242976eaa4062"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d6206fe955c396d8241eba475869e56e758563f9bc829d4c10100d33aec43f47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ca070d0a18264ee1cffd465971e28225c2c4ae7be5681bf36fb414a42aa45462"
    "en-US"
  end
  language "es" do
    sha256 "1f8ddd093c7fd813003446a88fd83017f9a0b409c082fe72802a8e15e577b57a"
    "es-ES"
  end
  language "fr" do
    sha256 "c75bd1a6d207727c9028ef25b68837a6bad82f017dc298053e0852e03e0181cf"
    "fr"
  end
  language "it" do
    sha256 "8bab1934c322cb5cd3c3efa7feab9531f849747cd1aaa8fd831d3db1aefa8ab7"
    "it"
  end
  language "ja" do
    sha256 "2ff9396733d01a0de70d8c1ac6abdf27ad930f49d4c3ee6a4b58a48c96bb49fe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b1d1da13b3314477e03b4a3e91249d71896c9418d7d67cce76522f34567b574"
    "ko"
  end
  language "nl" do
    sha256 "2b8755bece3b35fea4b83d4a447e1346fb4853589baf78316039c62e41c4304c"
    "nl"
  end
  language "pt-BR" do
    sha256 "163bf4e40600551badd1da34826ef349ded521195e3cf49fa35944989f78de6d"
    "pt-BR"
  end
  language "ru" do
    sha256 "a317be073b01e53ddb0f9ec5f7b167f33a2a398c4a60cf5c0ad7a458de18c36f"
    "ru"
  end
  language "uk" do
    sha256 "76ee1da1f762070d4097528c7ee7f198ce2c70f43a09b3da834167b693bd74a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "29c6af4a14a466b8985883ed8f2c2a24a2922bc0d06dd4632712c7c459f8b812"
    "zh-TW"
  end
  language "zh" do
    sha256 "992122c8e8fb2fed80d217c5e6fb6729ab3cd364d6649c2517469033a0825b1f"
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
