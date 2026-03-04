cask "firefox@developer-edition" do
  version "149.0b4"

  language "ca" do
    sha256 "61a93e3acd55812787df0319a043443817ab17a78da6be2b0cc4f1ae47b1ad3a"
    "ca"
  end
  language "cs" do
    sha256 "2e89ee77e5a19bc283aeb8abe1b88b6b2e26cfcfd9bb7ba3b928f5ef54f1f5f4"
    "cs"
  end
  language "de" do
    sha256 "2e389510d67e01823128d4bde17d79fe163f2868e6cf6483b32e23881f896317"
    "de"
  end
  language "en-CA" do
    sha256 "6d890a1b54f801be376760c4bd9b34d9eef0decb20ce21a31cbf682626d2dac8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "edcedcbb60b7664534dd204b97072195b27883ca9a581397a874c81a128b032b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "776cdacd1dc1bd8b4953c3bb59371a6501586688bc9fd610242f37e9199a9c80"
    "en-US"
  end
  language "es" do
    sha256 "96782a5e2cfce754ec25069d8b5f16a9710316aa88f1931920fa8f3a2b4fce73"
    "es-ES"
  end
  language "fr" do
    sha256 "1974c621995264b784f062661864a743e8de20722ff6f092651ad2b7a2dab366"
    "fr"
  end
  language "it" do
    sha256 "4c7377a44fc71172d63f06afb9a083a86af1d3a9a3c6821be9c4b7554da9e92a"
    "it"
  end
  language "ja" do
    sha256 "09f77e22264bea1d91715494a4b6a41063f1697dde6c9d2c1dba4cf051266011"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "caa26f6d01aa1110871d7d84335044cdc41084c87951ad347053711af8d5290c"
    "ko"
  end
  language "nl" do
    sha256 "975b12b9017f178d5c82bfdb85eebe65b1876a8786d64844d65d1c6428869d31"
    "nl"
  end
  language "pt-BR" do
    sha256 "6949127aa9d86fb1cf344d67d0a062505ca2e6c545e0797c5ebe06300786443d"
    "pt-BR"
  end
  language "ru" do
    sha256 "a82b29e03adb7ec87f2f7d9b4f2980e75bed4c2b2d4f705a01507cbc7474b9ae"
    "ru"
  end
  language "uk" do
    sha256 "932da82a545670e5117a74f617fb21a05a44d04c87b442279056954e75a32db2"
    "uk"
  end
  language "zh-TW" do
    sha256 "268670a4fcf9b22cbf6581eb32d86e0c62151f5b8a626a9f77218f043ce918d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "e69f6495ebae5675a51be19ffb200fc6219121cb3acd6d135e6dc9d61b3c0895"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true

  app "Firefox Developer Edition.app"

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
