cask "firefox@nightly" do
  version "145.0a1,2025-10-02-21-13-13"

  language "ca" do
    sha256 "1742ad2e67c3b08f43a7940fb19db716fad343bdf8b6393b5605ced06e6b03a3"
    "ca"
  end
  language "cs" do
    sha256 "c0f54a6d04ecee51044f2cdfedd20795de12c89f17cc82a3f3406b8e7f3f442b"
    "cs"
  end
  language "de" do
    sha256 "179c206fbef93faa33fec80120f5532cfa6166faf95209ca064855c676e91c32"
    "de"
  end
  language "en-CA" do
    sha256 "77f8424c184e958d90597175600f7bc3ef13ba4aac8ba17f24f7e83b16b86cdc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "812440422b15195f8191dd2cccd36e075c3f1634594cbc25f813861a9bbad424"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb10d5b5d5a59c156212d3513cbd473dc4f11809167d1c053122adfaa907dd38"
    "en-US"
  end
  language "es" do
    sha256 "8d19e718f8bb46359d0c71dba6ff30de58c848d0f4346543d6e4cfefb58acc5b"
    "es-ES"
  end
  language "fr" do
    sha256 "72b18f86915e6e260ee780d438a8d271b1cf0ba254ddf2936376dbed5c86df7d"
    "fr"
  end
  language "it" do
    sha256 "acf53321e43907c76dd330bd246a8f3fc6b47993562b5bef54354b4fabc4ba38"
    "it"
  end
  language "ja" do
    sha256 "d49e64fefbf18a83d06ceaaa00c0995832c14730c5053c467cdbaf8ced256af5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a0f2f23bfd25119786da0e81ede521267e002316ec5e93c1f383b2b133549edd"
    "ko"
  end
  language "nl" do
    sha256 "e70c1e23fea01a1c09fed848cfd3374edff7cc1afca3067e8b36e112ef96f566"
    "nl"
  end
  language "pt-BR" do
    sha256 "2e693d68a932e4306aae0c3eee78470635a28d55167daf6f924cf3a36d620af4"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ecf94c5378ff63833808407f8cc4dbb470a3522c3a57620ebbc7e5dd09e7b80"
    "ru"
  end
  language "uk" do
    sha256 "559800f7210705f8d3dda3bc44a6063fd437e907c98d5a9994e64301b3d55f99"
    "uk"
  end
  language "zh-TW" do
    sha256 "7fcada36f759dd04f6b27ee7d3f9e6457c99046bdd6ac67355b3600599acf832"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca850ed964a204f023af86e78f5c6d26476fa64d5c6b10dd9deb58874ae5ebee"
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
