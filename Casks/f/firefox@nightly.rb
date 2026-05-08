cask "firefox@nightly" do
  version "152.0a1,2026-05-08-09-38-34"

  language "ca" do
    sha256 "98895b93be4857e6b14229dbd7d78f6622543cbe104b3a57fb9c5f191f776d7e"
    "ca"
  end
  language "cs" do
    sha256 "6ed1d86d80f14070898ca81705805405e95b8625450f204d85b354576c1a47b6"
    "cs"
  end
  language "de" do
    sha256 "57c9182404370ec55a35bddc338ae86315a64d276c29a0f885af2fdb9da0d9e7"
    "de"
  end
  language "en-CA" do
    sha256 "4e0688ed4743573170d03e446f139cdab78e5379662a20b0eeb4f6035ff7244e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4a306e170d8ddd20da5da66a59beb1f293f2b166c63eb3736ed7e57b77940971"
    "en-GB"
  end
  language "en", default: true do
    sha256 "12fc8ddbef093b77a0d88e63299497a138f8dc793b175922355164d1f24c6dad"
    "en-US"
  end
  language "es" do
    sha256 "5ba5f91cba2274f5c7a518489b4b0d764c9a29db3d288f1a8e72c5824dbab464"
    "es-ES"
  end
  language "fr" do
    sha256 "d605142e8d82d9411744b7f7dc523d2aeda5ffa2ece9553d3b3e73df62dd196d"
    "fr"
  end
  language "it" do
    sha256 "0624b26fa7e7f865e0de3a9f8659bd0e3545897eecbbd5f01c73f66bfa447d41"
    "it"
  end
  language "ja" do
    sha256 "e019181717b4e59b83d8ea4e8e8364ccd084924dd023b49674411c51031bafc1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38f6c79744eab6c6d7535e0fd61cfa73f7c68657fce01ae59f60c0fcdb126ed0"
    "ko"
  end
  language "nl" do
    sha256 "67071110d3b8c03355b7e74e290384ec26c9e38b77c2eb824539e00ff7c85807"
    "nl"
  end
  language "pt-BR" do
    sha256 "97b5c9d96833c504aa7ac3f969eeb923fc4d404b98a6a6e7fc7d1f8781dee1f4"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b1384dd16d2d47f62961c1d0c6f9bfc7e41ef6bc8c3556152edb454b46e550f"
    "ru"
  end
  language "uk" do
    sha256 "fdc3b3ec76d6db1f86f3297755aaa17be32fdc5dce5fac3f302e0a4697d6224f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4bcda4cb9476ffb93041c7dde292ce614277f9c63701019f08728c0b52e143fd"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd244329a1048462a98045da3a528dd5cf620230327c9c26de3839f57571ae5b"
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
