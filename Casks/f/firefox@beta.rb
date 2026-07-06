cask "firefox@beta" do
  version "153.0b9"

  language "cs" do
    sha256 "1ec10fe771485c58d7680e6c4141e210ad4c1ab8cae5ec2c882189dfe0857d42"
    "cs"
  end
  language "de" do
    sha256 "2bbdb73d6fd6a8b1ac09dbef6fb28fc460a1a3e183a980fd3d5da4f3ea9d094b"
    "de"
  end
  language "en-CA" do
    sha256 "5e5d206e20dc71884b4f90e5a4d57dd2c7988d5b2243d2bc65919a7a6db34639"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3c25848d9c92974a689aa359f3387b1614bbbc0c6b8eec443d47c473b7fe662c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e952e89d1c01bc6f7d2c9151528ce18f732656361c319736100d2514afc48df3"
    "en-US"
  end
  language "es-AR" do
    sha256 "7940e9b7455eb286430c7a019c9375a1a788656a9cdebc8be34bbac6a7a06d54"
    "es-AR"
  end
  language "es-CL" do
    sha256 "acb93a7439cec720ed6605d9b92cf8c824a7a84babd8ebf0941ff01701ded8e6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bb0c65e38bd170f5f6e82220fffb2f91c48f5ffb226eba999bed1208627cf850"
    "es-ES"
  end
  language "fi" do
    sha256 "b2591edc3b8c95eb288626bbed1796c35a62a035668f17b35e1c6c3220d42a42"
    "fi"
  end
  language "fr" do
    sha256 "d385ea04a266c5dc10cf312c6a5307b5711cd02f6f366f6c767d8353d1d7353d"
    "fr"
  end
  language "gl" do
    sha256 "6b81699c6efd004e0f8f96e5fff9723449a13237df54c19b686dfc00e5f3a415"
    "gl"
  end
  language "in" do
    sha256 "531f428d38bf5fc3990e15b9d09fc2c043de85aee09af0c80002bfef7e9a7d2f"
    "hi-IN"
  end
  language "it" do
    sha256 "265309f50180a4ac92c0fbe63ddebd23994465bf74c5258aabccb841202e8978"
    "it"
  end
  language "ja" do
    sha256 "cc9f33e9ef996859cdb9ef82f1ee4360bf36b39cebc568c904f23bbbbea0d6d9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "563e3082e335264dfc630ede3d6b5fd140b738f1e859aa92badd93a18fe92c16"
    "nl"
  end
  language "pl" do
    sha256 "e77d5c4560b5c348b6a89f36b7e976f8b11178ec3f62880d11cf15d2bed2927d"
    "pl"
  end
  language "pt-BR" do
    sha256 "d44f354e901ad0c19e36753a5a6a0bf161b6ee127787c5634c4f7fd9529e5970"
    "pt-BR"
  end
  language "pt" do
    sha256 "7fe9773d8c8b8946bce870a57eed515f1e2ee211f204af86bef43d1769ef5fee"
    "pt-PT"
  end
  language "ru" do
    sha256 "7000a7b4a32df14741301442b61e4d4f8b9619ae1ecec469da3a746b50afb9a7"
    "ru"
  end
  language "uk" do
    sha256 "faa8470609698c7e4bbfc576805819434fcd3e80c47785137861eafa39ecd99f"
    "uk"
  end
  language "zh-TW" do
    sha256 "04533eab0716b16a7b5e4063170871ab367b6582dc405a9efccb2b2599b52d9a"
    "zh-TW"
  end
  language "zh" do
    sha256 "26709366209511a664d85903c8ae35c5b226d2f7ffba66ec52a746622a150ceb"
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
  depends_on :macos

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
