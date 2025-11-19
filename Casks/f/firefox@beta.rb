cask "firefox@beta" do
  version "146.0b5"

  language "cs" do
    sha256 "fbce26e28fef6c6384bd69ddeec07337ab4e5f8a5305bba835932d29754131c9"
    "cs"
  end
  language "de" do
    sha256 "71e7e2408fc29c3302c88efc546ac4b2baeb4e441d7d40be09347dbf25deaa3c"
    "de"
  end
  language "en-CA" do
    sha256 "53efca4e5442bd49a2b3b51a5d7ab8007be7af6c70404c8ab0e1cca3ee2028c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0d418ad0fb1e8d3a61e76fed02bfefbfdb7a3df684545cda43fc46744c66e031"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4821a9980b24264d02f1b97d083ecd177616f19f7a00adfcbd2e40d7053dfe42"
    "en-US"
  end
  language "es-AR" do
    sha256 "e28a3abb19fdb9f116385a40a94c2a67be882ff0aab39e69c46a66e6fc28a0cb"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4c52fc569c6193af1f0865817238e33a7879fabf3b71242feb016b81d879ed26"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a866dc2293879fe50c0ac9b3cee9524c5319a9a19098d14c97615da873ba3629"
    "es-ES"
  end
  language "fi" do
    sha256 "29fb7ef5f16aeabb69d0dc3f4bbf715ec29a37e3f2eeb912e93d1e25be73000b"
    "fi"
  end
  language "fr" do
    sha256 "45fe2de25e6c680143e3186c917e13e7d779b93d7ec0a18caa84ecf8a6191f5d"
    "fr"
  end
  language "gl" do
    sha256 "5103eb6d755865ff1a078d058e4c17a44452735d623b48ed70577549587dcc16"
    "gl"
  end
  language "in" do
    sha256 "d612c3a1fcc5ae1ab160bf493723eaa65048206741ab7f7f030f5577ec04bc49"
    "hi-IN"
  end
  language "it" do
    sha256 "fc3919d5761337745c0a36db2c794cb4959cc322e3338eeff3ed01c29cec9343"
    "it"
  end
  language "ja" do
    sha256 "de8b4bab7e4f8953de53348fe123c59d77422801b4feb22d303fd216327d0591"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3c3010910425ef7a4dd0516e332c3612a06b18c5fc9a98c5b118d19ff063dcbe"
    "nl"
  end
  language "pl" do
    sha256 "ad62f1a17fffcbd8a17436ba15ffaa1696ca85ee9569de4f2764f6e515d4722f"
    "pl"
  end
  language "pt-BR" do
    sha256 "acc5b16a74a77146a0ea9c926ff3261b5c55410ce5219c240bb5c5a7b6dd3c06"
    "pt-BR"
  end
  language "pt" do
    sha256 "d85466d3bb550166c15f14085efe9871a82a4ce078fe25f9fff49a9926d57f8e"
    "pt-PT"
  end
  language "ru" do
    sha256 "92f306f13e68ac5eacdfaa28a5715995d4d0e35e2bad8eaa7ac08e73bb9a6491"
    "ru"
  end
  language "uk" do
    sha256 "db6ed994ac984f5b122ab5fd46b42c23fce508448dc626eb0c695b72d7dbe1a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "66f1678eab14a6097aa40e12bb6721bbcbe2624231327c10164965fba733159b"
    "zh-TW"
  end
  language "zh" do
    sha256 "7fd1bb1a44af417a5851e39136480b69e706d3152b105f425698036c38dc4180"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
