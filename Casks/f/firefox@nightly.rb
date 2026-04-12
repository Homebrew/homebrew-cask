cask "firefox@nightly" do
  version "151.0a1,2026-04-12-07-57-31"

  language "ca" do
    sha256 "e3dbb96abe2b057f0942b8d30d39975f921dd27d8036c1dfa07c0b9ec3ffa177"
    "ca"
  end
  language "cs" do
    sha256 "bb34d1590462e05aedf6b31e3a00909cd64707b70d388e77226926058e8dee01"
    "cs"
  end
  language "de" do
    sha256 "2552e7e5ef7952543670827ce1eca789d8117f1d1c9cbd0ebc54bf134f179689"
    "de"
  end
  language "en-CA" do
    sha256 "dcaad78dd6021c044b099682e5137df307b5ad03e8f3dc2dbed5a1cd0908f09e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "56425005b62d51312fd88bf7ac3c221b573a601a86356a4af5117fbe106606d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "beb19c789e644afe8806b6e42a3eedc577528893842580faa307d04f5c0a0f0c"
    "en-US"
  end
  language "es" do
    sha256 "1a825631197b11709ecf399d8411b6ff66fade4a887cd0414d12f37e861f0e25"
    "es-ES"
  end
  language "fr" do
    sha256 "8dc8acc13249bcf493ed3dd8c7e7ac8ae1f2ba3fcc6a12f3c0ac92580c8e212a"
    "fr"
  end
  language "it" do
    sha256 "1389a505d7a765954272ba267e51aad91366f0a4b6ce20a9b5a8336835048a23"
    "it"
  end
  language "ja" do
    sha256 "bc3825b09db5d950c1c02ae037515e0813648d40af4111a8772c497a7f9b46da"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d823b7b176fcfb455f887b27884e4d64970e69b011a2a43032ec4deb653b888b"
    "ko"
  end
  language "nl" do
    sha256 "4c575bb01b45f7f04a6668fb7236cd1681098daeed30bd4445a1c5f9d18a3cd3"
    "nl"
  end
  language "pt-BR" do
    sha256 "6e2c2022fa86bb6174a28bf7f2babc69e3aa238724abb22f9b7def4718d6e7c1"
    "pt-BR"
  end
  language "ru" do
    sha256 "8313949a4a575870c9e0a536d905c6b970f157adc394828e2f962ae19ad12732"
    "ru"
  end
  language "uk" do
    sha256 "5bcba976c5c43bbfb27c825c3573f6a9d287112c36828535db1cc9fef3beed2b"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b5ed83830219bbbf3fb36b39dabc358e1a8b7535ffa2574ae18bf7eb1692c83"
    "zh-TW"
  end
  language "zh" do
    sha256 "0185fb72c8568bfed5691cf294dade125a724ea2b2a47a07fd7e0493ba05d2a3"
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
