cask "firefox@nightly" do
  version "142.0a1,2025-06-24-09-44-15"

  language "ca" do
    sha256 "dd44d4b4e2510b302a00021ef6eb9a86c12df86d75173b21e8d69a5a074173cf"
    "ca"
  end
  language "cs" do
    sha256 "620367d86fbb71a8e5836f3c098759e049e8e33d0261559ae79b226d1fffbcca"
    "cs"
  end
  language "de" do
    sha256 "e56e3447cce6b0607368bde2b2e4a1d0a39e7039d57638bcdb88e75c680bdc87"
    "de"
  end
  language "en-CA" do
    sha256 "8f5340941c65c0e9eebd2cc0b3b8bcc708faead2dabcbbe774df54cb63441cdf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d91d1d686d0e4fcdb3db6b8e36dc39c3cc23d7d38425835460d98bb82d0a1c78"
    "en-GB"
  end
  language "en", default: true do
    sha256 "564677938944c5c137b69703bb767b33a8f315e47a3d889ecdbc7d4a6f6802f0"
    "en-US"
  end
  language "es" do
    sha256 "d2f21556a815260c92e445d1596ff47f5d2f36f14fe20f9bd076cce1a6425435"
    "es-ES"
  end
  language "fr" do
    sha256 "13476023dca06a382e49a3e9c92b1d5718c657293a2c002f3df98415f2cb5754"
    "fr"
  end
  language "it" do
    sha256 "8f522a641a8d289ccacbcc5dc0e65846642da70822cccc6ac2497f6a9fb32f26"
    "it"
  end
  language "ja" do
    sha256 "c55aa68061d2e780d59220e331b08dc466ee17b2b9dfcfa43d1455c9be4c5b01"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2bf214f164bcc616afa68bf506b130b1c2dc8c5e7ed536d7d0e6c971540a4a95"
    "ko"
  end
  language "nl" do
    sha256 "11325e53fd8cf014a1be95f1036774fddd00863d795e646ce45f4a66ec4c8ffd"
    "nl"
  end
  language "pt-BR" do
    sha256 "6558214eaaefc0d6bc82fdd19383c5f67f85d93dd707c9f070461f695e4b8d4a"
    "pt-BR"
  end
  language "ru" do
    sha256 "7d9150512d6a50d0895b2e95da152f4151565a134b3e7005e9d29655e884a003"
    "ru"
  end
  language "uk" do
    sha256 "5b4164a133b51338b9b70b41858495d3e99fd2d920c4a024682c471099145612"
    "uk"
  end
  language "zh-TW" do
    sha256 "88d9fc68419e5c16d745fd84d25e619e543801e80707be11674902733bbe130c"
    "zh-TW"
  end
  language "zh" do
    sha256 "b50b434918d6e080131c21a9d9487e0f3193946a1b4df9ce763b8592d59c1c64"
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
