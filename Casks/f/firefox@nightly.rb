cask "firefox@nightly" do
  version "148.0a1,2026-01-09-09-54-29"

  language "ca" do
    sha256 "bf6fe8aa3e5b453853086133987d244fe7980f0f7eec7da128aa2e2bf4cd5991"
    "ca"
  end
  language "cs" do
    sha256 "1067f074c05f4deda99385d5137170d789460b3af8fe410ce1cdef3ccff34780"
    "cs"
  end
  language "de" do
    sha256 "1e99d0d698283ce0fe802e73db90e0faac6856b320e1c1c32df4edbebc3d64f7"
    "de"
  end
  language "en-CA" do
    sha256 "6c4ed053a1902d3f1993aaed6bcfc18747a1e536988081afde7dfdd48f2f1ac7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "24802e2f29fcead21cee6bfa7acaca5b9b5ebf1676bb39e821fe02fc53d8c6b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8dcdf95591af3e95265e012d58b73b3f8d0aa83dd13171d6e1a1216c519e5cc8"
    "en-US"
  end
  language "es" do
    sha256 "230bd2fdc50bf599d5ef31cbcbe6695a0f5df2a5c94c69a5b538e9679023f610"
    "es-ES"
  end
  language "fr" do
    sha256 "d846dd6ad6b8c1edc20efa1607c6fbe52559be80ed195229eca151bfb899965f"
    "fr"
  end
  language "it" do
    sha256 "8c1626185f6e0a3b8ce7df00d79fa467748c6f9ae331c66a20ccfecb6f7b019f"
    "it"
  end
  language "ja" do
    sha256 "1691ef4a946ddef060ad549aa2bf5da1db431f33feb0b475ca99d301933a70e1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c229168530f489a08360c9e8a679c673a829cd882046bfb3e619ebb64d5619f"
    "ko"
  end
  language "nl" do
    sha256 "5c5c5603e7a516d18def7bf76f111306d2d58ae5ff7bb0871c59f9ad73c1091c"
    "nl"
  end
  language "pt-BR" do
    sha256 "ce2bdc127d8b8e44e2e89056609feafe102576148ee9f153f8c93672b4fc8f1e"
    "pt-BR"
  end
  language "ru" do
    sha256 "fcb88f0f5ad402cb1f08c0e8d48839371c6c0f6f51b7528e225417a3e1ee2853"
    "ru"
  end
  language "uk" do
    sha256 "4c10185054479d882511e1bce4804af7963fd42190f186b26f549ff80db4a4bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "0389442c51ab476e93ac72a3f34fe90db4ce3cba45ad6307c2dd62c62e6e5e94"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd2fa46aaa494b97a8e5970a8fdf03577d8e21d5fdd69f0e11ef6040f619a8c4"
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
