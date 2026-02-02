cask "firefox@nightly" do
  version "149.0a1,2026-02-01-21-12-35"

  language "ca" do
    sha256 "e8147f4a4fb342496e22c1b8cd703c6547da40d2b5f620150c2f7c85a79671e6"
    "ca"
  end
  language "cs" do
    sha256 "325935a84befcbc329d0c64ab4c2bb5a57a517c8d3456ba5639bcfe8302eed68"
    "cs"
  end
  language "de" do
    sha256 "d4876e5c820d71f8b8d9e0027866b0ef280bd51f3c60a11fbfb7b9d68df8dd03"
    "de"
  end
  language "en-CA" do
    sha256 "00a398c61bf99780ce4215247014b6c0726a864c3447da4759c6c48f7c13556b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fec5b78ee90d5317ca7a59c196eb37c72cd241a001e6ce366064944fa6c11cf5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f0a6a437df512b32f5edb5770a706a6d7105833888f0f562aae5cbb8164e6ebc"
    "en-US"
  end
  language "es" do
    sha256 "22d718dc6575acbd40f26914c5c4e0ab2835e2b72a4a2092fc8111f6a2a8d9a9"
    "es-ES"
  end
  language "fr" do
    sha256 "6512418dd81f85dff20343da8d9616e404569d25d4b65c3a2e884444bd358faa"
    "fr"
  end
  language "it" do
    sha256 "411ab2d2464383ee4d4d3a617d61902d5d8453dcc9730b3fda63018a127d1bf8"
    "it"
  end
  language "ja" do
    sha256 "0a418e739a2d865cf55a972bd2f53065d10d4d4107132b1e619ac8fe6f0a9da2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c6739dd9da5bad1518ab07480f853e83d887a9e2bc9244a602cab90195235f75"
    "ko"
  end
  language "nl" do
    sha256 "fc90edff29a2a017ba01f962cb9de28cfda6e77bc7e09f2fa79b2a9032efb0b6"
    "nl"
  end
  language "pt-BR" do
    sha256 "981531c6c4210de778c1e378594c17818d2e9a387f31a60af1539c79cd13741a"
    "pt-BR"
  end
  language "ru" do
    sha256 "d9a15899989827425590ce924ed6d4e88835102ac0981788ce156652d44d3cec"
    "ru"
  end
  language "uk" do
    sha256 "3bf4620947e2d94b3575889072753956326d8a1ceb93b2cf677402f661308cde"
    "uk"
  end
  language "zh-TW" do
    sha256 "529046fb9a60c5268930ef90ab27bae96581190316322f74b00bc8ece64df0ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "16ae120ca57d27117704842fc464d0a1c045cccfd8dc4127aa3422e746655487"
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
