cask "firefox@nightly" do
  version "141.0a1,2025-06-09-21-48-38"

  language "ca" do
    sha256 "2ad7ccb49fe6374a48f727a75594a527e0c87ba0aeb9e94569816bd08a75fdc0"
    "ca"
  end
  language "cs" do
    sha256 "0564b8d15d673cb65cfd39a05f4030358a52d70582692dfad27de5eb45e5bb5f"
    "cs"
  end
  language "de" do
    sha256 "314e86c52f42234d9efb1376046deefd6515ad253ef68c8888dfcdcfd8aac969"
    "de"
  end
  language "en-CA" do
    sha256 "a52a060353b5f7655acc176e8d571a680f6b8640b88dc5891e2f3857cdcede6b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b4da2239be660a5d8f8a8ab0f192669b78f161647e8fbdf65c1201ec8eb1b8c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "966ce03f647ddc03e50ffb767a5b1313cb2f5ff1f0bde6bf8bbf12d5dcde1a88"
    "en-US"
  end
  language "es" do
    sha256 "b28c5527476406fd8fe0614c1bd41f7d116c33841445369a9fb175d04bf4e59c"
    "es-ES"
  end
  language "fr" do
    sha256 "5c9fdc45499fb04ce434839199d2458248d461dd6223a1767e111dae24456d61"
    "fr"
  end
  language "it" do
    sha256 "e97c52f74e72cf889ecac68744c2e098a22caf42ca6fce1b27599d4a0b1d8a61"
    "it"
  end
  language "ja" do
    sha256 "3290f184ab7b0fd5966c7de485c2d292fb1033092938ca4e1408b7bc173e573a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6864bfdb4f3b61642f3d2e13b2660ec9df93cab273d5edd68156ff0a5a3bc7cb"
    "ko"
  end
  language "nl" do
    sha256 "7a39f112d04f59ad97433aa3ff0d48c1d3249171019b9050aa4e5c0e004765e0"
    "nl"
  end
  language "pt-BR" do
    sha256 "6cfeb86beebd65532ba4742424415a6b62c6dfbe7124b55e0547ee7a93eeda1e"
    "pt-BR"
  end
  language "ru" do
    sha256 "222ab93dd6bf8d11222f81aca78046c6225cf1c8b9f3d1e022e2af12fc40dea4"
    "ru"
  end
  language "uk" do
    sha256 "40c206f0305e397944c4368ae9a61713790ff2151c8d79f385a01c34987e8558"
    "uk"
  end
  language "zh-TW" do
    sha256 "019d30c3426194e184291f9e33bb908a5f2fb8e7d9705b95a92f037479b45f29"
    "zh-TW"
  end
  language "zh" do
    sha256 "e207d822020d9c8b91b66400b3a50f32d0b3d48f3c37c67a5ee7d807d51bdbe5"
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
