cask "firefox@nightly" do
  version "145.0a1,2025-09-23-09-28-48"

  language "ca" do
    sha256 "cb50a095f12e3c6374a35891cfdb8687ee132eea58f32a0231c5fb7ee70b1175"
    "ca"
  end
  language "cs" do
    sha256 "84222ab1446443fe6d39708002e179b890b4808ebe7f3a143e8ff731d1576723"
    "cs"
  end
  language "de" do
    sha256 "eec2764718459ab5685e2b4736840e59e94ec1c8639e99541752c21a3a73f4fb"
    "de"
  end
  language "en-CA" do
    sha256 "d7d0cf57fd22247d93ecd75769c17bfec10b2ab724ab8a1077a3669e7df1d2bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2a1cb4c4054c267c59192e243faa26037fd621403ea00c89f882d93bf215fc36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c4232b8146559bcb9f9a48c1b4e78cc79b73141eb62d0c66718531bf73dec76"
    "en-US"
  end
  language "es" do
    sha256 "98a6c95f7eb2f3b69528ed95e706bbbe2655c5b5756f1a53d1654a5f13e978da"
    "es-ES"
  end
  language "fr" do
    sha256 "52b0fc27915f2b5a434d9358d278bd53b5dc553cc81b79aa6e233a443142862c"
    "fr"
  end
  language "it" do
    sha256 "d760e67b874fa4dffcee899673f0bd7cbc01d9a9d17a5572ed2f6a530a9219ff"
    "it"
  end
  language "ja" do
    sha256 "afb8b64c5a99ddf6396ac0358e253ab06626f3f7020a871cb604cfd0ecb7c0f7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "544bcf80d7d1e5ba624c3a30c6082cfceb7f34fa297269bcebe67c90e335de35"
    "ko"
  end
  language "nl" do
    sha256 "6b0555c5cab037978d4036ba32016f48391e3c623a5bf224f3de0cbe66065d40"
    "nl"
  end
  language "pt-BR" do
    sha256 "bd9d81680c75a6505ebe7c399110bf7be1e0014e56636bfbd64bc4657d56127d"
    "pt-BR"
  end
  language "ru" do
    sha256 "66ed6b78e24d5f380b7f9c1be4a09fd6d4878caf8efc80eeaaf04418edd83c08"
    "ru"
  end
  language "uk" do
    sha256 "541807bbe783ddddb43b8b68668d03ce805c59804cbb746d901873154e1dac3b"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e4df6b9c629d86806fe6bc81af2a0c3ca0e105df8ffecb1575f227ed66330ed"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e15879ccba9a71a912763a834f47d7016d0b54a179530f4c3513047ffbc2f78"
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
