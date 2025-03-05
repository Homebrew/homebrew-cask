cask "firefox@beta" do
  version "137.0b2"

  language "cs" do
    sha256 "c310380d9920dc7b34d4d0c60e51b04e287c85c550f220294cab682a7acbf4bf"
    "cs"
  end
  language "de" do
    sha256 "21060275ae41b6d8db3d10e7e2d2de28b61a98af9fe007037e155863c524f221"
    "de"
  end
  language "en-CA" do
    sha256 "6edd759c7d5e76c5571c91abfa7eae6df20e1c45673e0f79624c16a29062e0b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "26765449b2de69531b117d0a81aa239dfc2a0e33ee1b3ebc95972f75f921dee7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2038c5a761974ee521943986f82fee551de32d2e8839c1102c4bca70c5953bbb"
    "en-US"
  end
  language "es-AR" do
    sha256 "f1e7da8cb782d48a353d3051ef9962277fddffbd1799d73885c1322c61b93c59"
    "es-AR"
  end
  language "es-CL" do
    sha256 "325954341bd900e13eb8c0e83ceb1aae72b1e97f9fb8385a34971c732d804b66"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6d8b2deef6db460791a3f898b3e3f3aee63fe194ea2014d20f2bba4aa987de48"
    "es-ES"
  end
  language "fi" do
    sha256 "e94a2fe44e2f303af10818aaabe17ce8ef86619a4054388dab68ce736559ce25"
    "fi"
  end
  language "fr" do
    sha256 "37fc4e1d96061b48cfa982c74b3f257fa79c3eeaece960082f8344f1ea76b8f7"
    "fr"
  end
  language "gl" do
    sha256 "61c69b49effcd4e2e571cbb377bb41b872ccdde7c6cf7745c29adaeab833599b"
    "gl"
  end
  language "in" do
    sha256 "f421a7714fb2b5e596213a3fea4996b3b75e3cd88b73f227ac3b1743cd6551bb"
    "hi-IN"
  end
  language "it" do
    sha256 "3fc584dd3b767abfea8874a880d6abbe7a9c622c18796ba28834eb147f4061f5"
    "it"
  end
  language "ja" do
    sha256 "390deab9cc8aaa3869f5783f25411430a6d10826fb758e9c81500fac67196340"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "80f35ff2ec2e0d995e0579a482262b4d5e455b05faab24508c39e0424d24d572"
    "nl"
  end
  language "pl" do
    sha256 "fb345e273c95c3d794ba98e8cd551eee1db04cdf8c1e18d31f380e77efa9e31b"
    "pl"
  end
  language "pt-BR" do
    sha256 "b1edfd237d338ad970658e10ada2a27da109ff23e9f50e9d5be937bf4245e570"
    "pt-BR"
  end
  language "pt" do
    sha256 "af7383ccab267767301af00bca3bc8d3f5617c7d6730d283ffedad55ef4e714e"
    "pt-PT"
  end
  language "ru" do
    sha256 "3b7e720e6fd8c731ccf8a7725d7e1230035ff1fc551211e9933290b3ca27a75c"
    "ru"
  end
  language "uk" do
    sha256 "5b8840b2bfbc417ef599dfa835ca9872e9376b2523e89f942f1057d386f5ca38"
    "uk"
  end
  language "zh-TW" do
    sha256 "3373d01395b5ae4784c3a584ecd4ec9e65241f51925c670878d5cdb69d984a2b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5c0e2d600c0f80e217cbb7d87e166fe5812c302748d0f52619b617e2979d9c2"
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
