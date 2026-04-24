cask "thunderbird@beta" do
  version "151.0b1"

  language "cs" do
    sha256 "c76b00429dd634a65679ef16467f7d0aa2e68fd63dc9c2c247656b46c9240f0d"
    "cs"
  end
  language "de" do
    sha256 "9d1ddf6d8a26e5adf174ec21ddd1dc7e63915cefff34aab1d88f113099cdada7"
    "de"
  end
  language "en-GB" do
    sha256 "798299c28bd92677891d5690be0dc0e5dbc2704a190d1ee6a67fc26d43bc5dc1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b619be2c3648680c6816223bcbb7b1849890b95f65d773982a741beb806f1498"
    "en-US"
  end
  language "fr" do
    sha256 "19bed0d2cfb3432ef533941fd7bf1609d2b41d4de02bee226e1064f8d937a34a"
    "fr"
  end
  language "gl" do
    sha256 "fe990e26475225cd7acd6c11de14ae82f28ef19f0b940a666848e03a3bc60ee1"
    "gl"
  end
  language "it" do
    sha256 "d7089ef9cc0059837112a1bba5cb1192e5c94a1c5631a53a974b1807765f5679"
    "it"
  end
  language "ja" do
    sha256 "a933b877ecb987aaeff1ba2fe6afb10abdaaa4ef0a5fa701b8e9035504f705f3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aa82b8ce3a3f97d8d4137ffef1789df29e3cbce01109f23784c467820593850a"
    "nl"
  end
  language "pl" do
    sha256 "8be3c3232e7677ecf7c26e153108f16be3a8f9d4453286b4e8c259ad9734a050"
    "pl"
  end
  language "pt" do
    sha256 "2fe8990b8cfbec960d3b8950f4b02f70428d13d51a7e25b1363d41945cc24d2a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1a2241c3e24d842b879e66b74336be5e2701cf67cf5e35eabd145ce2ecc56826"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd289556374dc1c77d9580656c9de5e5ccb155e75c6e0b290d764ab354e329f0"
    "ru"
  end
  language "uk" do
    sha256 "82de7f7fd1ba0dd02a35cff89a502332b8060e82f872a299bcbb45c6ec084870"
    "uk"
  end
  language "zh-TW" do
    sha256 "883ae2cc5659abba23d462a13547b9af413b90fdb3217cb8000930d3107c1560"
    "zh-TW"
  end
  language "zh" do
    sha256 "6536de96835c2f5f9cda0abc00e852e6c41d411853fb22f779d3ac8a6584872e"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
