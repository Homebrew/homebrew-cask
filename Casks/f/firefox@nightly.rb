cask "firefox@nightly" do
  version "145.0a1,2025-10-12-09-02-16"

  language "ca" do
    sha256 "2d0e46e4c54c01d2a2f2f4ebf41d13a4f2108988889bfe2b4605c52bb667b8bc"
    "ca"
  end
  language "cs" do
    sha256 "54595277238fc4f2812759536a8f6c0428cfaaa96118f698fca1235a99b0c9f9"
    "cs"
  end
  language "de" do
    sha256 "c1c05434bacb47d152a4b0d15f9ecad9ae58a3066a3ae093a075e1f31c6ad102"
    "de"
  end
  language "en-CA" do
    sha256 "f8896b850755e345d1bcbdebed64046ecdebb3fba6f125c39086a48526c85469"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5a94d799faa69f04bc06166d23306d71c3acfdf04689bfc68ea9ed1a763b1cd6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "06fbf524e47188369c14c74e2814dad587598244ebebc53ab8e7126f62fa19a4"
    "en-US"
  end
  language "es" do
    sha256 "6e24914571eabc4d4eb897dc10d43d9d8f93af1e667fcd98e4cff3bfaf1aee6e"
    "es-ES"
  end
  language "fr" do
    sha256 "2334bcef1171a837ca1923a7140490a1a724d769ff5b32f9849d700ca31d9a4a"
    "fr"
  end
  language "it" do
    sha256 "5a2d7a9803b87cc3f05a61dcf98679a5801997f3ee32844a4bf32b15fcb9659b"
    "it"
  end
  language "ja" do
    sha256 "c42bf3e93374c3351c3ac40ef22c88e3f73245859c34241bb1e66188a848b753"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7c4ffc55f003664d133b71f17bf855714ed515e2aec05bd4971f2030c1d69523"
    "ko"
  end
  language "nl" do
    sha256 "59dd7bdb1bc26d34816273b0a6d7b26a80812215a9892919418ed0978dfa8662"
    "nl"
  end
  language "pt-BR" do
    sha256 "450cf818ae680dbe226471be9b77749076a6dc6cef7a0fed865874a84cbb6980"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b1f3cc8cbf3a863f499b6d8bcf6acd95b20da62dc9f6da1dae2dc69087157ab"
    "ru"
  end
  language "uk" do
    sha256 "cee58d023a97390ac6324f7cf3d47490f0be3c509d6bd49ab6084b631d91a6af"
    "uk"
  end
  language "zh-TW" do
    sha256 "7f7699d10964379b3e9b1a7f3c98acfd3a5bc3e6ead4efc068e46a3296623773"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa3c11173faaed1ef735c3ccedc54bcc273daabb59e1b639979f452afcc44933"
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
