cask "firefox@beta" do
  version "139.0b3"

  language "cs" do
    sha256 "227025d8a07e708c21c780d1d8422c8bcad637839650c8e9db50d47fb6e19da8"
    "cs"
  end
  language "de" do
    sha256 "e93e39109645b478c172cfcaaeee2edbb306b3804d01779ec086369deab7aa7c"
    "de"
  end
  language "en-CA" do
    sha256 "8afe4f00fe86d9b0621908187d1f118e99ab2ac6756583bd66698025827740ff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5ab095439714e9a294abcb6d78a3732376027f985cfebeac0092be8951fdca5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a7433bb645cbef9dd123afe8856060dbf6afaa1bab06d14298ebbc7d35968984"
    "en-US"
  end
  language "es-AR" do
    sha256 "0bf32104b49a264e9511cfae8e4dcd47462070623fd257624c8227f324182079"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5210fb47ea7c8be63e339d839ff85a8e89903b215f454750d090b51af020e6c7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9bb15e880b765a98e7d4b565943ae68c7f998d92e60652f1dd5d2feda034d54b"
    "es-ES"
  end
  language "fi" do
    sha256 "3b3807fd6dd88d9eab2962f43bcf8397a929e40542d01d03d5a7d7a99ac05ee7"
    "fi"
  end
  language "fr" do
    sha256 "b4774b5c955d56947d2907046e5fe6bef301dc58a1080553f7bc8290ab0b66b8"
    "fr"
  end
  language "gl" do
    sha256 "af9ac07b880214ca1caf7568e00a68443b01c61fc0712f5f8816483ad915b2a3"
    "gl"
  end
  language "in" do
    sha256 "f3c3669913c6ad372c0b02316cba88573f4e45aa41e64b78f19a26f307400244"
    "hi-IN"
  end
  language "it" do
    sha256 "b2228bfc157f5fbb5b25488b611b7b30db7a3d910fc76822e60e0afe0cea866a"
    "it"
  end
  language "ja" do
    sha256 "708f5086a8a43c12ba52a7478702eeeb20fb992c26a1735126a8192d968bba2e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8ec6fdc94ab7aa5315fcc000c25caf2d63d4f970dd09a418af5bf6eceb40b063"
    "nl"
  end
  language "pl" do
    sha256 "0b6e84e7da06f945b75876248519abb93dc06d55225914e946ab3ef14039e6a9"
    "pl"
  end
  language "pt-BR" do
    sha256 "89eb1e180b4bba2dac99cbf16ff725250b8cee10d1826c54f259e15b7f694e96"
    "pt-BR"
  end
  language "pt" do
    sha256 "f3ce4f5bd2a4e726e5174953aaf935f06f4215cb345ad946c0c970cedacf79a3"
    "pt-PT"
  end
  language "ru" do
    sha256 "74500db5a2c5cec8d23888bd792487ab10960f025548f47274cdfc023f9f2b53"
    "ru"
  end
  language "uk" do
    sha256 "25cdf73462925ab51ca1d173d811cb1d5959fe8190ec6eafa6e9849565d13574"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b17affd882fb32bccf46bdf7bfb6d3eb3e6b2df38692132c515651ffc0b51d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d7caca95b9bb2b82d88e5ac5ca80837c4af8e18eb509423247a4fe5bd6305e5"
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
