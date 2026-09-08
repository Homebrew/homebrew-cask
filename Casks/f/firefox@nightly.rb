cask "firefox@nightly" do
  version "157.0a1,2026-09-08-04-21-39"

  language "ca" do
    sha256 "754fe65fb9f1e27449e4f5337914cd5ba27d0cd19a18aefb330d1cf3d673fa1b"
    "ca"
  end
  language "cs" do
    sha256 "9e683b24850e3d18028b390046d8663963d2efe5612781180b2284ec7f47e97f"
    "cs"
  end
  language "de" do
    sha256 "1f3f8132b96a6ac939eaddeb6c04be39e2543e05d84d0da484c65d612aa93b83"
    "de"
  end
  language "en-CA" do
    sha256 "a2595dde02e549fd8dc4fa890e6c5fbed75d7493b60cbe1e60bd13f02a20417d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61bb4bcbbc2d7dabe9fba49c4d72a146b11af7d69091f6b78e2138bdf74328b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "edae4362a46f51fb45e77435516df3ed9c831aa281cb8b2834e8c71876debc00"
    "en-US"
  end
  language "es" do
    sha256 "ed934395391ee56dad41d93c9cadcb65cc49870286be5b215a78c14c801d19e9"
    "es-ES"
  end
  language "fr" do
    sha256 "64d7ffaf1589066d3cb7a37b0a327f15294a0f6ee9406055b7662be45cca1698"
    "fr"
  end
  language "it" do
    sha256 "ba0ad582bd1e9fe83b22731f8923f0f08a310a9536214512d1beb364ee4783c9"
    "it"
  end
  language "ja" do
    sha256 "7c56a8cf561c470ee5c82fd347791d9efddcd8d5177c9c9cc9ac7ed6b6c25409"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "207b35a8c893465b86ed810a7d0b895981d0e66669ac0369e624d9a78b20ca8a"
    "ko"
  end
  language "nl" do
    sha256 "ec9ff8b2695ab9a113427757f8497d14ed578e4016b3f8da1c61474b4426678c"
    "nl"
  end
  language "pt-BR" do
    sha256 "ae093045cde59a2df869bb5ff0fd9b85e24746911e5997e1225c572d90c1536f"
    "pt-BR"
  end
  language "ru" do
    sha256 "829989d1c99abccb0fb541e8ac12cfb7ec2f1d45d87430cb0f3c24cc78e07157"
    "ru"
  end
  language "uk" do
    sha256 "370a8d13aa5194caa38ae83fb7c93c3df666ac6d96b6c1f15122e9284466ab91"
    "uk"
  end
  language "zh-TW" do
    sha256 "9c65bd48cc3508ec2b02f50bf7e00344e5eda4c211fe56e1eeac370b3dcdce17"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a4df105682d7c56f2de759807f16d3c09ed5b2481017151e29974bf496a1be7"
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
