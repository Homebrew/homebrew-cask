cask "firefox@nightly" do
  version "140.0a1,2025-05-06-21-38-02"

  language "ca" do
    sha256 "263bb8e31dede6166aea61d25ccac42f4a5130e62b4189c7e1002915b7cecb13"
    "ca"
  end
  language "cs" do
    sha256 "49c6da546cb04dc6ee8a1875f640d123ffe08c6b56fe2b1aba1cf7bf9e53aa0d"
    "cs"
  end
  language "de" do
    sha256 "128fbb3c958c16c179e54b2627a1972ea1d22596c0b9480a80a845cc64165620"
    "de"
  end
  language "en-CA" do
    sha256 "29f224827911b703450a62489cffbd9f31ecae5eba165535b5798de2cb593e95"
    "en-CA"
  end
  language "en-GB" do
    sha256 "127b4530a4eb64a3139a3a7822bedf205f183a22aebd23267e31865de6891889"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eef18f3cebc106feb13592207dfda4f83e321d5871d1793844c39bc0c17832d7"
    "en-US"
  end
  language "es" do
    sha256 "552067e786f7d9c4c4fc2ad3f6998549bc974f2a0c6a9a2e3f28a2a757149cd1"
    "es-ES"
  end
  language "fr" do
    sha256 "fb1ff7f13c74d0f8f8dc931f48e917a32d7626570aa62b65d9886562fceeb9b9"
    "fr"
  end
  language "it" do
    sha256 "2e470ecc44b8983698460f317346fd73b4e867375f9c9951931e286463eca9f1"
    "it"
  end
  language "ja" do
    sha256 "57a06a29acae82f7ff15a176177d8015f6a76587de4ef00cea5abbcec18a06a0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "002968b17a47b6d763fb2324a92f2e424f5e93763522993b0e77ac59e331b8ac"
    "ko"
  end
  language "nl" do
    sha256 "c2664b671ce49f40fe5060213e9284982f101f07e51b2e68e1cd7c43e3150707"
    "nl"
  end
  language "pt-BR" do
    sha256 "14e787a36b9b022aa91bcd2ec7b47caa22d78c10c26d4ca7e09a67074246a50d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8c4b6cce691797e78fca5ed2e50343dd7db8027659d45f1dd24982808753a315"
    "ru"
  end
  language "uk" do
    sha256 "5eadfa6a8cd98e4b9b87cf414ea22a4e9e87c98251ca871ae58ab447033269d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "599d9db38cb2caa1acbac39cc476a7386e2e5047bee0a68e77fb8882fe6cf61f"
    "zh-TW"
  end
  language "zh" do
    sha256 "bcbf48893d005dfcf63ec501475e1a876b666e4625e7b5809377235a30c0c18c"
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
