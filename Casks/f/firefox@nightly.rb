cask "firefox@nightly" do
  version "148.0a1,2025-12-15-21-07-21"

  language "ca" do
    sha256 "e7371ea4734d6263bb8fd485a382d30c834fb2fca0eca7dcb17507ef5c25e29a"
    "ca"
  end
  language "cs" do
    sha256 "020073e8e0baacc5ba215be2f977dbd3bb4858caf36c6d2653cd21d6e00bc551"
    "cs"
  end
  language "de" do
    sha256 "d7eea7edb85c89538942a7b1fb5bf2334136201064468726a40050bf577fc034"
    "de"
  end
  language "en-CA" do
    sha256 "9b6bfc0cb3a29b872001a4c7eafd43e52874f214136a5f561e522b9232882c79"
    "en-CA"
  end
  language "en-GB" do
    sha256 "56f6ec8b599a861095f1250a42c000d0a82a8a5476211c74059aa5f01daa9ac7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7396e81e80ebe906c2a8c47e600526bf9349286b835e986819ee0d575f14f46b"
    "en-US"
  end
  language "es" do
    sha256 "65b892b24db2bbc8002ca7bc28e7fb2a686433f5f7ebe4bac099be1c6d8b1bc0"
    "es-ES"
  end
  language "fr" do
    sha256 "2fd258c475c6b0fc3352a445357878167aac78059af02ba982255640aa68d82e"
    "fr"
  end
  language "it" do
    sha256 "0e865353ca02404faab09e2a555544b1f8e0b4d427583e9b2b536c5955dcc016"
    "it"
  end
  language "ja" do
    sha256 "c61e2a3d3d979e8a944e8ec13583d0a325bf599b4b21a72e44b8b6fc7093783a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "63d163623a4db0baa7b97d9c66416ca9d19fcc41c9dbcc0702d74c7be696b380"
    "ko"
  end
  language "nl" do
    sha256 "3f36939e00452039b39b9fd35a741639db3c4a620ad608126c00ca056ec87001"
    "nl"
  end
  language "pt-BR" do
    sha256 "344d2909ed93e3d8b6a360a6b57206febc2bacda075ff35c15fc1d32d3c9bb08"
    "pt-BR"
  end
  language "ru" do
    sha256 "58f8ec9fbe961412c0cd2680b94496fa4e74c4279a0f80bccb89accce6a77acc"
    "ru"
  end
  language "uk" do
    sha256 "9582fe817f2e822de863fa9cda04922f7564dc0c7d0f9aa8589e3c3e984bf0f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "03859e8c42652ee3b0e6facfaadda815a3fb1ff153fd239cf3fd8a8804b8de40"
    "zh-TW"
  end
  language "zh" do
    sha256 "58790db4dd6c7c8a589efe1d85c98bb5741c18b9c2197cded27040d8c4953d79"
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
