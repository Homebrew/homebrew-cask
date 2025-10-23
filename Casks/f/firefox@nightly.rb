cask "firefox@nightly" do
  version "146.0a1,2025-10-23-09-49-50"

  language "ca" do
    sha256 "3b00ac3282229382bfe4372659098fc12e4251778bf26b2f623666978bd0bd13"
    "ca"
  end
  language "cs" do
    sha256 "7b994f3f4def95d881b36bca483d1c4c2a52c0c84f250d59b8154a1fbe0c6bbf"
    "cs"
  end
  language "de" do
    sha256 "b579ba5004c773c9d744a95d74c898e33e3b6b535e009035cd0c2eb759dd92c9"
    "de"
  end
  language "en-CA" do
    sha256 "51989232a33a1f32f606b257cdc3809e761b084cb3730f9d2495e0cfcd25f4c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "95ff0a3165eef0bf6c272082be1abf71ef72e4e4c446b83e7c2f59993189e174"
    "en-GB"
  end
  language "en", default: true do
    sha256 "47405aec7afae5c68dd4873d123d56556824000f5ff9d362880d6b58140aae04"
    "en-US"
  end
  language "es" do
    sha256 "75f060ddc1a76ebda981d93099b35ededf36ef1c2717a4ebe23d9211b171f840"
    "es-ES"
  end
  language "fr" do
    sha256 "ff73e1be195edb60c081a13b70ad6193586ee28e8043a04905a25c3401e1c132"
    "fr"
  end
  language "it" do
    sha256 "26b0f8accc3190d2bb209593e55350b7fb5ebbb844c1d5cc45eee63e4a9b6a49"
    "it"
  end
  language "ja" do
    sha256 "88f3fa674b593d71d2859914a051be41e567a539e89837da87f6d89d553a52ef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e98a9f655501ab4197e6dad602c692ac01d147afd480e5ee887d83db76e1cc40"
    "ko"
  end
  language "nl" do
    sha256 "78856d6c66c3accc8a61f1a2790c0bd38ee25df0088e1317c1b416fde31c58ff"
    "nl"
  end
  language "pt-BR" do
    sha256 "09f16f0be31c8f0f15550076b1bae5f69daa1f2152845e8bd101f3dc22fb3596"
    "pt-BR"
  end
  language "ru" do
    sha256 "26b072640eb01f9774b8790eab02ff477adfccd0f5d0882c8ead4d1d159450c1"
    "ru"
  end
  language "uk" do
    sha256 "38954bba9cbccd29ce0e80fc8e9251ea12110c02b6e61483eecee5f99b5f7fff"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d46b0aa504a5ac79f3f53460b10720362497ac5ad11ea846c4d0de74de466d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "115582fa7024d5055cfe219c327ee58d32d476f1a719b48115a46662b5f52359"
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
