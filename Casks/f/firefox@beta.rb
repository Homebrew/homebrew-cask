cask "firefox@beta" do
  version "138.0b5"

  language "cs" do
    sha256 "6e0cddc8b3ce87d9f41021933d49ab286c99e4ba51b28650a6aa8c995204736f"
    "cs"
  end
  language "de" do
    sha256 "5b3dfa83078540ec52b5272c3628b72f97dfa23ccc07851447b4017a3a67295b"
    "de"
  end
  language "en-CA" do
    sha256 "c5abce23d5afd7d0fe5fdfaa2e6135ec09f50343a5982f58a4d0acb45f106523"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a71a50f7c31e23bb313ecf3422763d012832749def2fa1e43e795d9cba9233a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "361c75f82742eed2600f50b5ee703edcb783b09b920ef054df740295f8b42602"
    "en-US"
  end
  language "es-AR" do
    sha256 "0ae63c9c4eb119bedab6d859de845c7a9e8849f591d3ef498301c5797fdbaf43"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5c0266bfd194ba1b37234c5ff524fcf902e52db647f28385e7ed2ef66efee6fc"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6eacad316a0fadef0a844011cf6f26e1def10f2b6ed8be2ba0b8b2fce7d09b2e"
    "es-ES"
  end
  language "fi" do
    sha256 "7152065fbc82eca4749d955c882169c23ea7c08a2a576558d043535134734c26"
    "fi"
  end
  language "fr" do
    sha256 "44f63bce4b08862f1dfa7f3e8f138de6fa4d48184d94f3590edb26ff0084c389"
    "fr"
  end
  language "gl" do
    sha256 "784669d330982b7b423fd812c8d579d63cc99c6cbee7f7ef995d604763674525"
    "gl"
  end
  language "in" do
    sha256 "c4c3d4832b91a88aa8647e687d6efd0ead4c8d6bb60e85397f40a02aff896537"
    "hi-IN"
  end
  language "it" do
    sha256 "4a3f0ca85e6245f11ab206a32af52c40eb812bfef58489aacea05a8dc7852ff9"
    "it"
  end
  language "ja" do
    sha256 "7df52a018f68f3e84d7b27d65d50c665d196a68d7c1d22dc8d3ba910895f6cf0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2a4687ee310a287d3eec2a29126f0343f52def5367fbbd2458a2df3000d1df66"
    "nl"
  end
  language "pl" do
    sha256 "6da88fcbdf42d06e418faa67ef1fac20efcbaa09b6a9090dc1c9dc7d89847081"
    "pl"
  end
  language "pt-BR" do
    sha256 "4562d2f518d480f1c43b7f7de99d791731867b929209c57ded3ea7ef648aa8c1"
    "pt-BR"
  end
  language "pt" do
    sha256 "b55901170d663d4a920d5b83baf92494385841e0321086d4c8599327a1512756"
    "pt-PT"
  end
  language "ru" do
    sha256 "c7861444947f2fd4db8f3807edfdc9930807f4943a7df55348880d2d484da69a"
    "ru"
  end
  language "uk" do
    sha256 "287623ad2af1f34093d671e38527993a38d61c8a8fdbb5bf0e46369692411ccb"
    "uk"
  end
  language "zh-TW" do
    sha256 "baba9b8f02347f6a00fd7f7950369a491ea89266c4b6b68758497c833236b431"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae18688f706b792a73b1f46daab3ac93280c6989ba56445525d2164320fd1200"
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
  depends_on macos: ">= :catalina"

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
