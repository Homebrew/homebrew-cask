cask "firefox@nightly" do
  version "139.0a1,2025-04-17-04-12-46"

  language "ca" do
    sha256 "d5efb0176b0b0afd6c95fce7d6016a4bb6c91b2554b510fe6c8558cb3622afa1"
    "ca"
  end
  language "cs" do
    sha256 "0bd8621c9dd97b0f965fe70bc4ae64511a4f55d7b267cc0ba6c38446e386d03e"
    "cs"
  end
  language "de" do
    sha256 "7651d8193b60a649b2983cc381d6705ca172a86196d1a872daac81d450c9a8d9"
    "de"
  end
  language "en-CA" do
    sha256 "ae5b0cd79149c08d3530227f8242bcdb5a9749c2840e2130ac96894d6afd11b2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b203313f0b990fab0e6d96d79dcf3733ec1304b8d0f6b84a34a6417413763faf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6af0ca7d6d081f781d958ba13d3323ca2b7afd7475be27bc37f88bdbd37201ac"
    "en-US"
  end
  language "es" do
    sha256 "bc84ce7cd9ce18968a310a55e9575ec6cea7a0ce0a395c414dce21630b7b9d1c"
    "es-ES"
  end
  language "fr" do
    sha256 "873cc7377d3abae4af50e233b1d1f0f5ee9560ca707bfd39e19020e71ce4f0ab"
    "fr"
  end
  language "it" do
    sha256 "fecbf50bcc36c83fce32013d5bb6220e32bb9851388544326a9497316461bf62"
    "it"
  end
  language "ja" do
    sha256 "2bdb10af53acf17d05b999d4aeef38a7848ce06c418a02b2aa2efe971bdf58b2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e740a341459125a0049726f3226908eb42d2a91a5a0b99bab7bb268ce5500d2e"
    "ko"
  end
  language "nl" do
    sha256 "663e262471de3a48edaa33bf6f9203d2f2d31631c824e2e20fd3ddb1f8256478"
    "nl"
  end
  language "pt-BR" do
    sha256 "614b59c61862542178a34ba084d1812b611544da3ab1abb6c0a306807a1b5221"
    "pt-BR"
  end
  language "ru" do
    sha256 "060455d2b3a40c8b3161b975babb16e107496e8969cf294c1c7ea63f6eb6431b"
    "ru"
  end
  language "uk" do
    sha256 "a5486ceee09e3ef497ce35ac1babbaa84d6ad7ae602baa452339bceffcd25243"
    "uk"
  end
  language "zh-TW" do
    sha256 "7619dc4930b0e706652a7704e8e52d43fc007da0a6c6a6fa27cee5f5d0dc6075"
    "zh-TW"
  end
  language "zh" do
    sha256 "bbc713ff1ed04faed35857cd4675730cb37395c80ff7b36f37ac4551d529a7b1"
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
