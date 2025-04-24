cask "firefox@nightly" do
  version "139.0a1,2025-04-23-21-25-07"

  language "ca" do
    sha256 "25705982814f6884dbc6ea9ac59fb49df045135332aba2c2fcdc0011f20d3265"
    "ca"
  end
  language "cs" do
    sha256 "e0ab51d2228c2bb22e9dfb148d77f5eb5595341fd7263b668d8fef818d79ceb1"
    "cs"
  end
  language "de" do
    sha256 "2aa749acf6c4f2a1cdacb492d8c5a659d75abee354340d62da4a692fedc1edf8"
    "de"
  end
  language "en-CA" do
    sha256 "b13ad245be2dad9cdcd4625fff89b216f9494012dc3a4755a241ab68fb7a6db3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "df28f53b16c5a80be30de75b06a792224281c42848d5a81eb26eed28a2c8e85d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "067026fc70405b42a55f040670fbfbcc2adea7bd9dbcfa1ded87941ae5847659"
    "en-US"
  end
  language "es" do
    sha256 "911cdd37a20692fedd4daef88a59f2ac8de5d66877209778e9c0fefb94c3cb64"
    "es-ES"
  end
  language "fr" do
    sha256 "966eb445a54114580d8309aa606f0235e0cfb2996d03a217f7748f01a1e342cb"
    "fr"
  end
  language "it" do
    sha256 "3947c4d07d3fcb2cfb216b7e54437c58e9a343577d3d288fa3d648217696e016"
    "it"
  end
  language "ja" do
    sha256 "876493a52e8cfd5f29501d8ff1097cd05ecb821a2d54e0df1ef6915319620c86"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "892874d31ab6f0e616cf51079337ad84ee44f2bbb0e6cd3c81a3e7edc7504750"
    "ko"
  end
  language "nl" do
    sha256 "79d1129386728b1578d2535db2afc89f85ff7a313ac8072e7dc01d646f80ee54"
    "nl"
  end
  language "pt-BR" do
    sha256 "bb2626d5a6a7fa1c91b7d8a66dbd615221736b292679b6544a8047fc35566ded"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b35defe4758aafd45dc276fbddbda41cb91fe9f00c72f2d3d60d151374c847f"
    "ru"
  end
  language "uk" do
    sha256 "b715fb381cb77e14bc370bcfcbdf7d607014777f8623e48c385b6545a9548ad7"
    "uk"
  end
  language "zh-TW" do
    sha256 "b3774a74b718bc904eac16837de28dd6a2adbf909c8c2328a0e8ffbb360adc3d"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ce27d3b2f50412794aa38929a23228b29c4c6e5bb2b2c97c22cbce96a627607"
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
