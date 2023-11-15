cask "thunderbird" do
  version "115.4.3"

  language "cs" do
    sha256 "ce03fead4937e9cb526f925ca9b0e01f2a4ecd1ee7b77691b966cfec87f85cc7"
    "cs"
  end
  language "de" do
    sha256 "d4721da2ff9014738ea584937f7bc4e14e5a02343e742f2ebd84a8fc5244636e"
    "de"
  end
  language "en-GB" do
    sha256 "6efcedb90d1d68b0751f8b1fea91fc473f418bdc1cf16653691395d9b7e7e65f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "540b7800b9a75a3b79464c3632607d9f905c32959fa23e184897b09fb0dc189c"
    "en-US"
  end
  language "fr" do
    sha256 "b848a69a5b019b4635bb09f9df67b897dabce8c81fafa8755349491aa91559ba"
    "fr"
  end
  language "gl" do
    sha256 "85f0eb197ea864de6804aae81f5cf5eb83541965fa2623d05f704efe91280999"
    "gl"
  end
  language "it" do
    sha256 "12ccf9b22d5f100d8e09151f2acdded5dcc0e39ca340ad9f9014a807772401af"
    "it"
  end
  language "ja" do
    sha256 "dbae50f7c82b6f1347ddf304d826a7e9a3530f3c100e4a99bfdda7128ff79b02"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9275abd539b6a522f831786b17b6d7dbd7625018e1464bcda833f117f51f7744"
    "nl"
  end
  language "pl" do
    sha256 "2be9375b5fdf0188808bcc1927ee7835370a05c3a8415baaf58439cb56557a66"
    "pl"
  end
  language "pt" do
    sha256 "3c053cba889d1dd52dbfaf9acd9c9ea4be5a47b0c7e3346c510086bded5b8153"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ec4def3a8e672ec9efcdead000a616336a8d57c332f174826886c44587276356"
    "pt-BR"
  end
  language "ru" do
    sha256 "3cb074c62c3ceffd43eb21074389bdde0793b260b73b91720e876626de06b270"
    "ru"
  end
  language "uk" do
    sha256 "302b47b7b9419f6ea445861dbea1527d0e8361b6a276217193989648a15b4ce7"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c58cd72b3b0e789abe42b85cfd83417d19a792267c9b274f2f86b4434f8539f"
    "zh-TW"
  end
  language "zh" do
    sha256 "2d309783f9f584004585d27cc6eb4a02f134e1bbc377f17b0aeb529f54a44fbc"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
