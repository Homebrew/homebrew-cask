cask "firefox@nightly" do
  version "153.0a1,2026-05-27-08-53-21"

  language "ca" do
    sha256 "7e012c33028d32e08c0d4494aec98ff1081931cb138d407f23bb949be2bab9e9"
    "ca"
  end
  language "cs" do
    sha256 "13e538a4e3a0710876d041c6be6c1d648dd74838b20f627f4c827f007c3604a8"
    "cs"
  end
  language "de" do
    sha256 "c88400221d70712495cc649ff1b4c7f7f3c2291e2771388455205e12ece5580d"
    "de"
  end
  language "en-CA" do
    sha256 "2ade90802eafe1e7db49fbb2b2c104ed9833fb07380b630c261ebc22cf530ef4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b926bb26e92135a730fb394de68ec1d5ba2ffee372c444d604b67d291a906f7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7038e0c7b5832c88174053e114f690cb35583e4a7fa8108a5bb6a41b207613c0"
    "en-US"
  end
  language "es" do
    sha256 "cfdb5a3867b324ab7ee6cb9e23fb5ff62d8d643f1db698e201a4b4771ae0330f"
    "es-ES"
  end
  language "fr" do
    sha256 "244c5c263d450510beb62e25158bfa4ae3a0977a253a574b50edf4fc48b511b5"
    "fr"
  end
  language "it" do
    sha256 "d533dfe5d4b234c91d2e13f25916bf12b1d5dc4068b9093e5f812d9a537f4e47"
    "it"
  end
  language "ja" do
    sha256 "83c9d271f9c904efef724303602e3b533482fd441eb4ba0f71be612385f7a3c2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "924ed72841091e71eaa98890e993a79e8aad33fcc73a52d74b5c3b0e4072174c"
    "ko"
  end
  language "nl" do
    sha256 "45340d3a4cfb116df469d993d4d398dc994cceff118ace07a3ac7558c58164c7"
    "nl"
  end
  language "pt-BR" do
    sha256 "6556556a09f17180db67b970c8e81dedfe34294b94a20b1bb89edbb36cdd722f"
    "pt-BR"
  end
  language "ru" do
    sha256 "db4bb5018d7f22d313fad17d3f70a87f27d90cdb3627837850cff29c6369d952"
    "ru"
  end
  language "uk" do
    sha256 "056621d85f1da04b3391d38bc4910ffdda858ba338b97ac762faab33cb0ee513"
    "uk"
  end
  language "zh-TW" do
    sha256 "05c7d86518b289a7470e51459bc1a7b59e02eeef0c184c3196274d600da081d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "f7a9244ab93f1593c5b6ad9b4487ab3300c18441e422117c9c7af8557b6bd564"
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
