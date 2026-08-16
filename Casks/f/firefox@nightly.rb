cask "firefox@nightly" do
  version "156.0a1,2026-08-16-08-38-33"

  language "ca" do
    sha256 "5c987ad948a79a405e9e5f31d17c37b64812e694da7d2229e90108d1a6c1e5d5"
    "ca"
  end
  language "cs" do
    sha256 "aa26efb16f5cef3d8c4e47c85aa273266bb57e802745a31876e0651da856ec56"
    "cs"
  end
  language "de" do
    sha256 "6e1f4fcc72989ee850a6eb2e2e0904d4c5c7e1ab67e57297b7ec4e57a1e2dd2b"
    "de"
  end
  language "en-CA" do
    sha256 "db2412b052d44b811d592c7dd6bdb9ccf9e40f2b3a2fc9356dc0d39895a7cad8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2dd038d954ded4d356476e0303d428dcf46818c2cb96019d8e2a1c450cad9c3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "53435ecdd6612b26d17f014b0d497cf6fe3f118b22b3fcf1c7d2d58fa50a41eb"
    "en-US"
  end
  language "es" do
    sha256 "5790d4752e224cb3c18174f0466b04382f0c9591e7e4df5b99b90c6ce000c7b6"
    "es-ES"
  end
  language "fr" do
    sha256 "d49e433a17162d843ae4440b15a3c05b3fe62d9d84e4c4fc54d6a7ca1298bc03"
    "fr"
  end
  language "it" do
    sha256 "4b3f0336522dd61ee5745c9616a671c1ad7e4971168cd4448875d0eefe4538b4"
    "it"
  end
  language "ja" do
    sha256 "be52ad93a5b94097b5089c9ae7d783ba99cc2fa5d0da7d1d25b581dd2472a63a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "46d3e652946229d6bdcce6ebc524e30d77829f58b1eeab1da7b2cc6b4e8609e2"
    "ko"
  end
  language "nl" do
    sha256 "693fd797690d2440e79a588d5e38b26ee6a2e1e50ffa99b4944ed1a5ef1b4b63"
    "nl"
  end
  language "pt-BR" do
    sha256 "0a61a656f0bd9ccc6e9d29d476cb505016daa267be931a1f5440195cfddf0b99"
    "pt-BR"
  end
  language "ru" do
    sha256 "5921866aa2a615babdfee5cd6da7ed1eef598cef5d15563b8ed6a66589d67ba8"
    "ru"
  end
  language "uk" do
    sha256 "8aac366f5c08a4d93d740e77016981f65a4ef1424885c5806c9e1edb8256c069"
    "uk"
  end
  language "zh-TW" do
    sha256 "68726c11d25c1c44b38e2d8dae9b6f1c5f8ea80acc4737e120068c736eb43603"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce38d9b26f5527405a5305b98edb9ed9b834725543a95d02718e9f41693213eb"
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
