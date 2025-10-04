cask "firefox@nightly" do
  version "145.0a1,2025-10-03-21-42-21"

  language "ca" do
    sha256 "154e1685aa0960a7d2111cc4f2a0d058e0df979d4f9751899acf01e88c65e4fe"
    "ca"
  end
  language "cs" do
    sha256 "ce93db04165aa9dc38aed62797828d30bb8d7a3807aa6d87790bc7ed48b73f3c"
    "cs"
  end
  language "de" do
    sha256 "83f07d147fed4bd11e0ce62ee612f4c20a5d35e41795588cd222949002a20339"
    "de"
  end
  language "en-CA" do
    sha256 "5094a08c17bf691eefed20c07cde2617ed98eebc7fee365721ed44c036be56c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "da5144038764b5c71058c730801b4d7f8cc717987a86bf18b5d12844ad08c0fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33ab3ef1591236eb534b9bed85b0b03af0ac1a754f407ce4df45d62d7f9f23ca"
    "en-US"
  end
  language "es" do
    sha256 "0b79e97d796f13882d59afb157c9e7662dae83b8290502d044100b7dd67213de"
    "es-ES"
  end
  language "fr" do
    sha256 "ffcc096eb036b12fdab0364db73e837dc9a83ed9518af5ba224b37eb6d516127"
    "fr"
  end
  language "it" do
    sha256 "8a40951bb20771b29e97c6f87d00d058c584158b145ea65473be8fd93874d864"
    "it"
  end
  language "ja" do
    sha256 "ac4d2e14cc248b884b45fe1752c01a72bcc3e0d0e1e44376551a36fde9bcd47f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68bc183e9ed7dd5adbe3881be97d0663d5140f8a4688a2697c945a3f3e0d2479"
    "ko"
  end
  language "nl" do
    sha256 "471eb6220a5348df81add982232aef802e3422a23b35d386ada372621eccf846"
    "nl"
  end
  language "pt-BR" do
    sha256 "382db7281efcfd0f7ee5a1be054c78b04dfd3b632e2cfdd7a9a2a25546060215"
    "pt-BR"
  end
  language "ru" do
    sha256 "122e3afb38121332b2d30dae2ca8db16fad0a95546a55cb563486d7e159e98f6"
    "ru"
  end
  language "uk" do
    sha256 "955c6ee9f6553f5dd2a57afbb1d5a8a153298d4147005bad6a04d77e8b8da4fe"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1b438e9c4410509d1a0f2e9649a851022b8ecfba13e4504f436f00b9ab318a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed41d17a81973ef80f6dc66893fd007466536f210c119b907bbe6777284edaa7"
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
