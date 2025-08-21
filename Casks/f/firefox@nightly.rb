cask "firefox@nightly" do
  version "144.0a1,2025-08-21-09-19-52"

  language "ca" do
    sha256 "436f54f2014b777f4785fc91172e8d7a35949407544983b6f874cb48a6d371c3"
    "ca"
  end
  language "cs" do
    sha256 "919c12a1eebd6ee3377ab508f10cce3e27e387bd10feacb4ba3470499c033718"
    "cs"
  end
  language "de" do
    sha256 "a2592acadc84b6a8208cd9a9bd246d3fcc449ae755c61e6ee9715083bd1aaf6b"
    "de"
  end
  language "en-CA" do
    sha256 "f9582fd8a6cbb46914533ca4162a5791cde4f93da8cb3ec05f4db1ffda730c77"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e88237c8840984c133e460dc822931ebc3d14ebb5df27d5f0383c588a888d151"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a14613a1c1511e297f0fa7e4301566b509d138d418b0f1344053fec6231cafed"
    "en-US"
  end
  language "es" do
    sha256 "655abc32ba60096dcb1fae7b4b9720979f80bd73ea7ec4f97375245ba8fe8cd5"
    "es-ES"
  end
  language "fr" do
    sha256 "e352441afc63244967c89e26f94389241da145c3bc9c5e3e1360cf6336fce7b8"
    "fr"
  end
  language "it" do
    sha256 "ab466b629fcb162ba667dd041fb6941a920b93775214253b50a5faa3fb6365b8"
    "it"
  end
  language "ja" do
    sha256 "8cc598d3b8e96e432dd8cfcb4c4b3d5e82847ca380f94eb04f3d90376a846fb9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6dbcf2cfc0edc3daed2f8ed8c71cdce296f6172acf10389cc9d35f31986d12d6"
    "ko"
  end
  language "nl" do
    sha256 "e130cb978ff49739ebe6ff7d734e1c82dbaf1ca15e48f6b789ab5f3f7928a7cb"
    "nl"
  end
  language "pt-BR" do
    sha256 "01b4440dfeb18f640a6fa13d928e1122e2b6afb564cece7607deaa8ebf6876f9"
    "pt-BR"
  end
  language "ru" do
    sha256 "78fd313a442333725c938fde6a2982584ae207598157b601354e0cd0bde7ebb5"
    "ru"
  end
  language "uk" do
    sha256 "dd5910777fa97eea4bb92c3e45f67f1b492906848ba2e8367943733656726611"
    "uk"
  end
  language "zh-TW" do
    sha256 "064cd032d6385cb3cf41c4ff2fa6b86c8ce6c1d30c1cbe89e12b5edb1350b506"
    "zh-TW"
  end
  language "zh" do
    sha256 "068d44d67da1e39f3949ff1d2493c2f7734897526bfb3b09d417de29d07e1cae"
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
