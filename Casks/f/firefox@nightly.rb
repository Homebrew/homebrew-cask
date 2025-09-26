cask "firefox@nightly" do
  version "145.0a1,2025-09-25-21-11-36"

  language "ca" do
    sha256 "a7e8abd9a4cd382569a5ce1181c46fbac60630ae00246b9edea4e8fb4b575b03"
    "ca"
  end
  language "cs" do
    sha256 "1ce84af46c1fa5fca4a39199e18114505a47a5e386cf39b8543b7d630336e265"
    "cs"
  end
  language "de" do
    sha256 "d62bfef59ba27e6f2809f0afd5ceb098c13a66d4439eb13f66444c10d08633c9"
    "de"
  end
  language "en-CA" do
    sha256 "ae827547773d3f98155aafe3397b2626c4858801df3d4175bd25d366c38caf94"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6540eb161b0535c25bf73d253e71e51bad5cac990e41a04081d4b4602d9d1b22"
    "en-GB"
  end
  language "en", default: true do
    sha256 "43c3a416e2a2eff350da471bf24e058d1ae07ec8d80dfdda32fc5155472bbd06"
    "en-US"
  end
  language "es" do
    sha256 "036177bda92bf8316dca4c8130ed0994709b880dee157491b910188db2bc74f9"
    "es-ES"
  end
  language "fr" do
    sha256 "c90c4df7f8832f4ce617a62c4985b89d4e322b6195859651fc9f482ffeed82f0"
    "fr"
  end
  language "it" do
    sha256 "070365597cc615b663891288546225dac9748d24af6c89ec7674790ee01a88b3"
    "it"
  end
  language "ja" do
    sha256 "1a9980b2435c12cda8fd9effc30a7fffddfb2d12f9b0d50a925f420c4dcf9922"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3d66e431650e1bf2b52091ed3ee0d545f0712126b34752ad71547f3b7600b9a"
    "ko"
  end
  language "nl" do
    sha256 "1de39cb9afa4916c4b43851423b11cace7f33b6606dfea7902d5cf4ed0e95a6d"
    "nl"
  end
  language "pt-BR" do
    sha256 "30c6f583579e0b0736ce14a0aa3a5cd91e1cb98ff86383a5bcc3ba5479f9e892"
    "pt-BR"
  end
  language "ru" do
    sha256 "a3c543f0ceaa9cad5c33737de24a96aca4fc37dfaf3cf4cbd21a8e1a573ddaab"
    "ru"
  end
  language "uk" do
    sha256 "65332fec3d2ee92bf203a304e6713d02cacf9ea0df6b62cb3244b8c3465c43a5"
    "uk"
  end
  language "zh-TW" do
    sha256 "e13df92fafa71856fe2920fb6edf1065ec1631dd03d6eb0ca7265b5d46e17b6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "584d125f114f28f66dcfee4e30a3163a71d2ac5f221027ec53fc2c1b77265b41"
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
