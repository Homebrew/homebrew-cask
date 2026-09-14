cask "thunderbird@beta" do
  version "157.0b1"

  language "cs" do
    sha256 "2cb8fdd237a9c4ed8241c3f23773967a18e0460566869d329d6eaee9e348363c"
    "cs"
  end
  language "de" do
    sha256 "99855a5e6383918cfb9e6057e5e5c28e5d650e9f091a4351c3db8f1bc4df541f"
    "de"
  end
  language "en-GB" do
    sha256 "852528ac12971929a10a733573ced064aea5be1da0dba596e58c317a58500d0f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0665d889c1b0dd46078f5f6ee8e8fc5c593fa0a9bf328ad0f5dc187bbb9d312d"
    "en-US"
  end
  language "fr" do
    sha256 "775c7052bfd7e449857d0ccce1ed84fbc7a497595e0011b997c702f608f98636"
    "fr"
  end
  language "gl" do
    sha256 "0183b9ddad8f87a63582d09e27b0d857b753b991d895af9072042fdcfe3fce75"
    "gl"
  end
  language "it" do
    sha256 "19e7443c9712dbe171d34eb3669a8232ff1828522c0aa5d5538e193be60dcff5"
    "it"
  end
  language "ja" do
    sha256 "9dfec4642d4dea35573d1c914d236b0ed139d31b1f99744e627a6beecc806be7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0abfe78129e51f58ec6c5ffec713a7120a3df249bd063e0d0c9a709a4b0ce500"
    "nl"
  end
  language "pl" do
    sha256 "51262b8e368d86d237b7b92518519a4625a0b2349a2b958ce882cd7b90ac9763"
    "pl"
  end
  language "pt" do
    sha256 "97802f76bf5314fbf05417f9b1b4a16053c4dffa8fec3fa9012717756be15a16"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6c6218108c8427aa8b53d3263d1269389cb2965f8dfdab618dfb73a57286fe8a"
    "pt-BR"
  end
  language "ru" do
    sha256 "aef0965d83768adfdc0a6225ffabb88ae5c3cec95a981d610aaeae5f74b3f98f"
    "ru"
  end
  language "uk" do
    sha256 "3c7d638ade5340fe9f9615aa6f2ddcc3cb8247e9b8d8425facd07399085d3c38"
    "uk"
  end
  language "zh-TW" do
    sha256 "d9f37ba317323b9bd4be6234cc23a43b19763efb0a2a15b048ca41f852e2b037"
    "zh-TW"
  end
  language "zh" do
    sha256 "8cf1fba39646f98d142a6daa49bd3daa6fdbed9b70435fee4a9e6e7519cf8ebf"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
