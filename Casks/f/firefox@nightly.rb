cask "firefox@nightly" do
  version "149.0a1,2026-01-20-21-13-17"

  language "ca" do
    sha256 "0b473d688afdf6171cbb07f4121059b046097b7e32b30bac5e0da5ebcfddb6c9"
    "ca"
  end
  language "cs" do
    sha256 "ea68bc757557dc27a045a3136f5ecbde8a01617d61a209667eee73a8269dcaf1"
    "cs"
  end
  language "de" do
    sha256 "c9c2e48e4c18b3fabe03c36c7280c1039b334041ea240719d43241e78083d347"
    "de"
  end
  language "en-CA" do
    sha256 "862b5a13bf97aa2e13b2a5886fa3003a015d3632f0d7ef9bd8c21808d8a9c290"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cc7a9571fcfaacfcf3090ff1ef5300fecb40c3a5a3221a2c39e7f6d145c65f78"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f15b40893a6e0e1c9e3f8ac0c2c18766f5d6878f06e342c4bde8a0b2da3b613e"
    "en-US"
  end
  language "es" do
    sha256 "1a5b08c4508261d0eaa312266bbb87c88e3c767170d70d111b00df8895e5a4e8"
    "es-ES"
  end
  language "fr" do
    sha256 "a6e885ba310272ce4d481dd9f36476ba6c10f03a8841a9cf0b514b9c2ec6adfe"
    "fr"
  end
  language "it" do
    sha256 "a5248e1cc452e68473d7709923a76259f7626717f43232985f8f45d07b4a2829"
    "it"
  end
  language "ja" do
    sha256 "385b74824a9ea7b8d440a22d28e43e7fe7a2e6110dc3a85cdb372fc0cb9f4f10"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8074408df67cda0e13c8a7d48e7159154134242fc5191962efc67cb70751fd28"
    "ko"
  end
  language "nl" do
    sha256 "32c86c4a6e81b4ba04b0626674fe6301f71621fb5fbea594214573d17ed33a98"
    "nl"
  end
  language "pt-BR" do
    sha256 "881af33570373a558b86462fa7729f9e595aaaef78beb357c764ba670e84cf75"
    "pt-BR"
  end
  language "ru" do
    sha256 "deecb04aabe3f1012df5e93cd67a2766fa8fb60dda46b4de5a079fc62d02910e"
    "ru"
  end
  language "uk" do
    sha256 "ee91b72e0c7d722200d90b4e85e42ce304b3d359807ee2df306aed7415a2dec2"
    "uk"
  end
  language "zh-TW" do
    sha256 "7cc8d3816bbc12f2caf2275438a61ae3d194a6765262592af6ce9bb9e5cc7267"
    "zh-TW"
  end
  language "zh" do
    sha256 "b5a142177096ad342328a2d3a26a1a76fd8a7391a6c2a257abfbee81be24ffd8"
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
