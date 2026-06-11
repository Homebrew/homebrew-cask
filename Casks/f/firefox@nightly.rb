cask "firefox@nightly" do
  version "153.0a1,2026-06-10-21-43-50"

  language "ca" do
    sha256 "cef1eb3f9748f240407ec36380ae30d8b4280ca1486f5d77ff6bb62a63b99b53"
    "ca"
  end
  language "cs" do
    sha256 "9dc4e50984193da5679a884170014bd114dbd509b7ef9692ffbb4977b30958e7"
    "cs"
  end
  language "de" do
    sha256 "633d0c6ebc2d676fbc9b7dab39f5f4c72ca814c5e28eb8fc6d01e18ca27bf3e6"
    "de"
  end
  language "en-CA" do
    sha256 "48fe4c8bd210ab57955b41e5c1bdc1d8bc4d2bee7363904e22d953ada368e1bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b7ee1f62eea1f14595d399ed96d78ad09e7a55802112bc2c6ad27d2ce700861"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16c339f3993a6736166f825f0a537d1b0d48047a42949df162eebca747669014"
    "en-US"
  end
  language "es" do
    sha256 "413d4f656e2ff47ceffe1b1e7ca05b85cb6a86be5afab235f613d18ee22a9cb4"
    "es-ES"
  end
  language "fr" do
    sha256 "9e8a8d4c3ca8c62db6da2ab85bf5c483fd897671a7ee53e0e113c138a88b1051"
    "fr"
  end
  language "it" do
    sha256 "2decf7ec59e4fab98de793c29eda627e26799209ae17730011030016f08fcad9"
    "it"
  end
  language "ja" do
    sha256 "c9d05bef0e91ff0231f912860add167235b0b0211caad4d222505acaad42322b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "40b66c6641fc93afad1483466831ed05e435f1904d24b6c74e2f595cb463242a"
    "ko"
  end
  language "nl" do
    sha256 "3ef2d1aac1868936b8946727d9936b4cef0e546e2cf26589eb65ade8df6870d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "8d8b320413744505b7a9044ec084b6121508b1ae6fe5f453b0c2806512d267c0"
    "pt-BR"
  end
  language "ru" do
    sha256 "9bd94a3fa4899a711a797fef3205908ecbdce51e807f5948d89ec0c59dfb263f"
    "ru"
  end
  language "uk" do
    sha256 "950e6517c9180e842e11965e796f5d69b240740b401ca7b0643f72c9491153f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "59187818f34726a327adf587defa608a0cd273cec7d9b74d52b09aa81fe70f61"
    "zh-TW"
  end
  language "zh" do
    sha256 "bef5acd513093e331ac1dfa31084bd769098bc754a953d787124681082c7cd37"
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
