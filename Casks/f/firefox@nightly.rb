cask "firefox@nightly" do
  version "156.0a1,2026-08-21-21-37-23"

  language "ca" do
    sha256 "a4ff567d418955731ccba2cb0626baf7fdac08d08fa4d42f698fd49f99681fe6"
    "ca"
  end
  language "cs" do
    sha256 "5c86d0bc1ab677b7764d80a83f5230c999a70d770b8499537e8e1cc34bfa62eb"
    "cs"
  end
  language "de" do
    sha256 "49d89b49b00619c97398de61126612106d090f46ae462199d4b1b91bdb22fe9b"
    "de"
  end
  language "en-CA" do
    sha256 "a907789489cea9da7d47d91a42863ed778648d5173c8ab8e8907ce167d1efe46"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ec3514b340d76268c1b7c21bf78ce1951ed5403292aa8b2148834cf659ee660"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8799605a81e7e262377798bb0972bab54bf99c513a0f8fc1ffbd0cccbdda4428"
    "en-US"
  end
  language "es" do
    sha256 "0bbbe1cf992021146b8f6c66e3adbcca9bb61ba06fdcb27788de4289c429f696"
    "es-ES"
  end
  language "fr" do
    sha256 "2028cbafd06af6608cb7101a47c4bf5a62b614fb99a6271bdede6157efa52008"
    "fr"
  end
  language "it" do
    sha256 "407c62daf473ab9c44a47cb6944c37aa70a083a90e5836d5c6e65f6aa3b2c566"
    "it"
  end
  language "ja" do
    sha256 "d65197f519cc8ab9c8556e5d5f7807fa51c940a6805e99ac2cf6b7e62f3a1516"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "818926bf7a7a5589fae70979ff06abf05296b9379268a3e1ccedb0c7856895e5"
    "ko"
  end
  language "nl" do
    sha256 "142092a76b0e5a5fd418cb7b633e61ccac9e00b74d4cbd03587b6d01bfa8c448"
    "nl"
  end
  language "pt-BR" do
    sha256 "8ea93682be77cc7936a4158e9f1560e1e4fff211e6b41ef7181db982b3616834"
    "pt-BR"
  end
  language "ru" do
    sha256 "68d2f5f228aa5a1a33b239dda5346aa16c03ea3dc96d57bd3450fdac932504a6"
    "ru"
  end
  language "uk" do
    sha256 "5bf14d8a57c0d4adaaa2c64766f68e75c13754e802cfb50496fc238203aa62a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b03947e6830046ec0caaab8c6390f15fd9f553895d7cf443f23a9de41fcbe3ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "75ddb170842ed0880d4e399dfd341db4b613944101dc3eb1d9ede691a22193e5"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
