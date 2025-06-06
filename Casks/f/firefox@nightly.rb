cask "firefox@nightly" do
  version "141.0a1,2025-06-05-21-25-08"

  language "ca" do
    sha256 "083f21b4a8140d39dff90918e78e2cc2e71dbd17e9f439083fd8c64c90228c02"
    "ca"
  end
  language "cs" do
    sha256 "3e4757c28a859b733c31fe1b27c2454cf1ced51e01f69d0bff459f7aece61e88"
    "cs"
  end
  language "de" do
    sha256 "4cad041ba4409b70ebbec9035cda0cb3776418690841fc4c01fe9cfb0b26bf3f"
    "de"
  end
  language "en-CA" do
    sha256 "9499e31ff8f1f45f8c13bb2e8707f54e3ef297a796c866514d4fa907c5beec67"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4bd2db9263bfcb8fa8b2fd2c713a3e73af248c683f4ea5924808215206d0c9d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "754626e63bc3bbfacbb55ff94be88f2417845d372b19572a3ac31054acbaec7e"
    "en-US"
  end
  language "es" do
    sha256 "1e9af0e005233351485d8ce2e23670868f35e915d10ff3b18fd4431aae384d23"
    "es-ES"
  end
  language "fr" do
    sha256 "85694ff6ce71c0ddaf172cd76046f91e0c18a7aa00eb75c0a60e40a0af14bf8e"
    "fr"
  end
  language "it" do
    sha256 "43ed5d2a0aec66325d39fd84bb0e170adde4bb8931fc44827738c878d899d8d3"
    "it"
  end
  language "ja" do
    sha256 "3f2054f0e49a2cc63cd18a95df9f3b66f5987a70c6dd08220bb7808f00481dfe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3f09e04df2f9b7cd90da8e16950914440840519d6893ba54ea67625b0f2ff37e"
    "ko"
  end
  language "nl" do
    sha256 "256ee72d6440bc3b8bedba94a0edc46328d471161065ec62d354d7f22b69c707"
    "nl"
  end
  language "pt-BR" do
    sha256 "83bcc8efb87dd9a8d6d74f1ca0c17a974c0d630d2a24dfafdfbed0caf952193b"
    "pt-BR"
  end
  language "ru" do
    sha256 "22c45d0a8d37721446d9a4db745271875a8a384ab7e630016ffe4e623438dc18"
    "ru"
  end
  language "uk" do
    sha256 "77ea01b8397e01ea59955c85f2f8540706f22bfcff183a245a0900cedc9d4b6b"
    "uk"
  end
  language "zh-TW" do
    sha256 "7cd671ef6ddeb6e89a0bf932804d23fcec34d743e0477df60505f3c46eeb1faf"
    "zh-TW"
  end
  language "zh" do
    sha256 "591b85b18f33f0f03c3629751dcc65c88b82eadd986a53529538d58c1fecf71a"
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
