cask "firefox@nightly" do
  version "143.0a1,2025-08-03-21-50-53"

  language "ca" do
    sha256 "14451bd697ecf2d49ccd9475f4ec412e68c5447dae5e950e829fe49c67a8c8f4"
    "ca"
  end
  language "cs" do
    sha256 "6ff48525e3496367e82ad7ea574ea5e5f6e0e9a66c792d56abba072b7ab38073"
    "cs"
  end
  language "de" do
    sha256 "c894c294b3c7468a8e771c1944c1c52c843195c91ec04984bf6eea42d73d3ae4"
    "de"
  end
  language "en-CA" do
    sha256 "9f65cefcab24f15337f3f4cbd05ff3226e3ed5d71c70b76de8fb3eca8f0501c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "662518b1359ab51dc88d304d4a819a90cc9a13b319a9a058a9fae72dd56ab0f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b504af0aeb2b36c42b0960c4bbcddf88de658c3613496e46384fbae78d8d341"
    "en-US"
  end
  language "es" do
    sha256 "2000ca15c3dbcc8b172a9c43854320e5c08f944e3c3fff454a4015195639fc20"
    "es-ES"
  end
  language "fr" do
    sha256 "3ad820327dc718e5fb75b2de46d75019a6c8f045108c73cc8131c154671d6f2d"
    "fr"
  end
  language "it" do
    sha256 "8fe70465b6461f8bde1a1ee1a7c3c68535b96fc5f3ab7291e8efed72d70a6de5"
    "it"
  end
  language "ja" do
    sha256 "8ceb29f74510bed01b3534f3799511e5c7c4d45c1aa9bbc86f1c2939e7f14af7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2de0aec86435b9ab290195c6c4a569f2bcacae58ad7d529ccb5d6524e9960054"
    "ko"
  end
  language "nl" do
    sha256 "06b7566cb044b1583476863e6431c9079982dcd74adeac17f9563c123b4317c8"
    "nl"
  end
  language "pt-BR" do
    sha256 "96325a7c1d00b8a4e111bb56a5d7b482714cc37d3241819af47cc6d31e922891"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c8b72b2dcdd053f9049609f1e8fecb1d8fa4477a905877057cb4f989a224b74"
    "ru"
  end
  language "uk" do
    sha256 "de0637692521a4bac93166eb353aeb4b3d8ec215c48d299bcab9914833a785d9"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c8d9e2916f0eb97ba0d4b2e0fbf1a41a3067342a3eafae65dadcbde97bd06f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "894d079a41dea39be1d09f2353fbed33aca5bb7245d24105ebfee2cb8cba5e11"
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
