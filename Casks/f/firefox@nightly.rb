cask "firefox@nightly" do
  version "149.0a1,2026-01-21-09-51-27"

  language "ca" do
    sha256 "653bb4bf265d5db01b568207619fd05dd76b9252b816ba8fce7166eb5d47ff8e"
    "ca"
  end
  language "cs" do
    sha256 "e129a0d90a4960eb0cf52a16996516bada3498f7aaa0d966aea21ac3da3e5f05"
    "cs"
  end
  language "de" do
    sha256 "d480e7943c2f00654a7fdff3a858d42b0c842777301a4dd0550812c3fd90e6b0"
    "de"
  end
  language "en-CA" do
    sha256 "1d0fe3415917501c0b77f7547aeb54252efce821101d056dfd456c2305b029f4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "db17a2d5d4c5ea619dcf49ebb5b36cef60c911c7b02655fc132b3e4ead97c871"
    "en-GB"
  end
  language "en", default: true do
    sha256 "73651759e3e81e801ae87a3e2526c823423ce7891ca3d86f608f0052f1bb07bb"
    "en-US"
  end
  language "es" do
    sha256 "d0bcac7974b68a32d240a3645247185ab0d91302216e959987d4d49077bdf37e"
    "es-ES"
  end
  language "fr" do
    sha256 "4fef4192e41138a07c7722f6388f5f62aeb0559a09c3db53b9c4ee66b48c6670"
    "fr"
  end
  language "it" do
    sha256 "50aa77e01e2684c16df338f6597aa0da9ab0f714c67f11a43282f9fa874d595d"
    "it"
  end
  language "ja" do
    sha256 "dae22fa86689ec7611782789b1fe46af722aa3dd84d4571d6a5428834c02ae1d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f0fcd9a2f947ffdba0dfe53ffc9b93418c4faf95bd6ba49d4a97b6d309d474a3"
    "ko"
  end
  language "nl" do
    sha256 "9fe69f04952d5e0b1a31661d01122266ed2005436e809a1b3d0255c10915cde5"
    "nl"
  end
  language "pt-BR" do
    sha256 "6c9dc9b410e7e40d17548d428fad8268e4b79d665bea04333f340bc5e2314ee8"
    "pt-BR"
  end
  language "ru" do
    sha256 "b42ae85d90aaed5001df98cbe3fb3d3c1197f407e066937a3de7462ea27c2dec"
    "ru"
  end
  language "uk" do
    sha256 "58c8f4f8194ac9818b2ce008a80e25868bbb7f31460f7e53a72a703b2124e980"
    "uk"
  end
  language "zh-TW" do
    sha256 "43fa32948354897d56ab8d2303a50a61d1de14205c6843f8ad4e2f619a3828c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7106b69c8d9d30758bfed56b01aa71f6a7a017d6b0056a076cc974ebeb65e3f"
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
