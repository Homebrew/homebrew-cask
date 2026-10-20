cask "firefox@nightly" do
  version "160.0a1,2026-10-20-09-59-29"

  language "ca" do
    sha256 "3ad98c69601983225c313426dee909a9381a4ee7df410b8764ae0c6473a0b65d"
    "ca"
  end
  language "cs" do
    sha256 "5647a1dddbdcaff204a1663d342e5e03bcb2a7880f97185d186eabd1192a3435"
    "cs"
  end
  language "de" do
    sha256 "3d2ca3a8f5f3d70697d82ec062a8a0ce7c2b7b0c2608624ba37fb97e67a37ab1"
    "de"
  end
  language "en-CA" do
    sha256 "66695d20a53924ce01242b597b4445f9c47317d93088c3591b49e0a34a0e6cd2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "13400ebbab40b3b388c9a3a348cfd7aba400962e7f933b18b3f71ebdfe02c5df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2da28265f7c2e4ecb9f4de046cf07e27f21fefa98a563959578e55b1ac1b5902"
    "en-US"
  end
  language "es" do
    sha256 "a85dd6b7c915815f00a099033c4dadc06b2fce461462c47e525889d86ab0e169"
    "es-ES"
  end
  language "fr" do
    sha256 "74122206a47afaa4e7aca24c0252e83aa9032cbfe8fda49384a0f73a66e0706b"
    "fr"
  end
  language "it" do
    sha256 "b64d2a51ebfc59e0c621a30b41460fd34ad1f8d08a6b5b0511ea054205b17968"
    "it"
  end
  language "ja" do
    sha256 "797ae3b210fcb941236cce8d545f929056b59b50c1747ae3c9fa7c3cfa139a25"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c55fd5308035fdde6f5b88e2a0f13f1970caaf1058a8af6b365b7295cd74a2c"
    "ko"
  end
  language "nl" do
    sha256 "22f843c9bfd6645a945497fe452f4e02643605d7a039755941b760e48a105584"
    "nl"
  end
  language "pt-BR" do
    sha256 "d432ad9ed1c6a841a6216b8e248e0e2557e12bdce131371aeebc452ffd275ab3"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf0f4ea613b0a5d7130d4d90bbe44041ddf407239af3b2bee7bb7e45b259763d"
    "ru"
  end
  language "uk" do
    sha256 "309d2037f92200d8410bc27a85115c688b771ef8d522902e5de9ab33ca45cdcf"
    "uk"
  end
  language "zh-TW" do
    sha256 "551295d7043113b93711b2b57e224cbc7921f4a273c11d890ee909faae891f73"
    "zh-TW"
  end
  language "zh" do
    sha256 "877775b90bb95403d9881412fbbd24834c6043dfd2194400dc19dc0d4f7fb4d9"
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
