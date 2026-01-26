cask "firefox@nightly" do
  version "149.0a1,2026-01-25-21-16-30"

  language "ca" do
    sha256 "464e527ae0822c6cc97860a97e2ba112a7e83f4207f722d1d7b2467b2a1284bf"
    "ca"
  end
  language "cs" do
    sha256 "a4e39fc79844a25af1f856c72161f4d4d3d0ca17b5d5c4bb8a583bdd0a067751"
    "cs"
  end
  language "de" do
    sha256 "6442f6ef653cf565594f7964fe7e78c5934c673f1be1a29985c697380a1fcb18"
    "de"
  end
  language "en-CA" do
    sha256 "2d74a793a85f55193077faeb8e8713b9197a1c768ff4b1eda307012adeb3c70e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71d87823272fe7d88d4d84ac7d7112492823ff09003a4b696c62d64aefa8a243"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fc3535760d2d3c88ac20a65ac79e06bc883413c6889690903d560ed7cb117eb6"
    "en-US"
  end
  language "es" do
    sha256 "f672ec7120abf7e505a6a872dc13e8bc936abdb7d04e75caa28ef9cfa19eb928"
    "es-ES"
  end
  language "fr" do
    sha256 "9248dba5dd3f892b31693161f305af95b1fb130598482cb91ae4d63a09229ae4"
    "fr"
  end
  language "it" do
    sha256 "0482c5861a9ac6289e2c76f2bdb0c176c774aedb6999cda8314f79e421b0db55"
    "it"
  end
  language "ja" do
    sha256 "c191a3899a7bf911fe69169951a7215df37097c70b415acc5cdbb2d909a00a52"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2156df496ad88f343dc0fee6737e5470a4845928841598b529957a3158200787"
    "ko"
  end
  language "nl" do
    sha256 "4e79aee9fd4641167d9f49b30db2c3a418e4daad91bb13927f3e0c51c007087d"
    "nl"
  end
  language "pt-BR" do
    sha256 "be652eaae997974ead34a745a12f49a3a1b2c1f8667127d196c820e845bf3445"
    "pt-BR"
  end
  language "ru" do
    sha256 "0836611f427d20e13ab2de6f4353686054daae748a67ca8a3ec7d6f81a22cb84"
    "ru"
  end
  language "uk" do
    sha256 "7d65f8f2e800c5b0d3ce8db9bd0a50cf5916f63fc575a3edf1c7fe4d3709204a"
    "uk"
  end
  language "zh-TW" do
    sha256 "7eed0ebb0851e3304f9f68c4da2523e67336671b9649a5acba8922fd7cbaa1a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d1263299ee9f19890b56717ddec79697243f784a658bb9770046c2d3b20958e"
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
