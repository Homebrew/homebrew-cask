cask "firefox@nightly" do
  version "140.0a1,2025-05-13-09-26-34"

  language "ca" do
    sha256 "31e7909ec5c5546e644ce926a8faca6e02ed7af232585f40faa7abf92722016e"
    "ca"
  end
  language "cs" do
    sha256 "dcf9a7e5227a7a8ed79c3607975294255342eaf5cb06a7b646d6d91541629155"
    "cs"
  end
  language "de" do
    sha256 "59c9a837deb6e8ea1e2f01a9870bb327bac0734686937f85419e092daf03aa86"
    "de"
  end
  language "en-CA" do
    sha256 "5728abfbf0d69fde628e6b6e836bb1521e2d80876051f8b1d76862c4542f2782"
    "en-CA"
  end
  language "en-GB" do
    sha256 "04f04404656abf2306651ac302fa76cc66e2c83d9bbcc925993ab61f536d5f76"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b561a6b669ecdb5c2cbee10500bf3ea1638bf30db7e219766385336b2596009"
    "en-US"
  end
  language "es" do
    sha256 "791498c7e4e416296e15cfcbd76de308c9751dcf6938fc3bfcee61b6fe8f4128"
    "es-ES"
  end
  language "fr" do
    sha256 "d1e5f80df4d9733216c33bf5bda4c023e6b5609032ebf59025855899a2875130"
    "fr"
  end
  language "it" do
    sha256 "855fec66436a04e2e2be9ac8bcd13ebd1c6dc6c7140af7574f145a328f9a6741"
    "it"
  end
  language "ja" do
    sha256 "ec0c9aa3d8ec1b18c379e17d726488f63fe50a9f10f2e01d3ceb72054e9d7197"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8ab8122a7ce038a1e7cdcab304719e0b501c9b09f0d0c3ffab02a04a8ee3f38d"
    "ko"
  end
  language "nl" do
    sha256 "c2649e0b84dd30d1673ed7b6e80fe84fcf477788a0500f52327651e5ced35c5e"
    "nl"
  end
  language "pt-BR" do
    sha256 "3c611509af8720bc3a535af0f4e3bb48f7b90bb306a4b68daff507294f9d5bac"
    "pt-BR"
  end
  language "ru" do
    sha256 "2a3513e3633c6bbbb37d1b35cc49a2de066fc52ada8e60dff25eac91aeb61cb6"
    "ru"
  end
  language "uk" do
    sha256 "3ec0d6da3d8fc10a1bc6125e8f65ac9350d23744dc354d05aa40404dbbcf447d"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e1fa94191a66bcf124d57a5242b8b0197004f7571dd01c808597bc3e2c40da4"
    "zh-TW"
  end
  language "zh" do
    sha256 "be1513f4e2bd98a13558414c4ea5ab5890f906781b20396238447d371fed9008"
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
