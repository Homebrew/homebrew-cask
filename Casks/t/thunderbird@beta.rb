cask "thunderbird@beta" do
  version "144.0b4"

  language "cs" do
    sha256 "5e4cede4a703f1fee009e7e2053f6c6f446578482da34a5dd63fc40e98ad50d7"
    "cs"
  end
  language "de" do
    sha256 "7b184755275f219cda680494d29890c1520f5d922a11bac43ed413ed49ada2fd"
    "de"
  end
  language "en-GB" do
    sha256 "826a882dcfa65361c34028007d87718ca0d6087919d71f40740e9973b1faae1e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c1ecaeccac38925c4b7b47c45db7278f65dfc3e856a8defb16437dc8fa078fe"
    "en-US"
  end
  language "fr" do
    sha256 "ee13f31a5d467d6466050513dd5c7e4d1643754bf000a3e170859d4b038902ec"
    "fr"
  end
  language "gl" do
    sha256 "08e3c6a5615186900e20ecf4d9ad3b21bd0fa4b601243e60b522b93ad272311d"
    "gl"
  end
  language "it" do
    sha256 "2eb1cf6bdc9c264cdd6cf24358516c17ec5c4656158a5bc4e493cca0d1f9d0e6"
    "it"
  end
  language "ja" do
    sha256 "c388ddeca8a56dedf032642514ce75e6b387d12c7e0561fe1f7c99992c045532"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "83fddd22c9a5e767b373bec59bac43651665a768ac99e1bf841a18e53f256481"
    "nl"
  end
  language "pl" do
    sha256 "2ab556370c3026d35638adfbf9e22b7f691c676fe68a74bd21497a38ee8e69ac"
    "pl"
  end
  language "pt" do
    sha256 "15fa75f995f55dd3d206bbf4183659d44768f8df989172e27b099204de7b0666"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "960b18c635b10c2f0eac8039c704bd336886968a35ec60e8a5ef80dec8788287"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa03ccad0cfd5be8e74c602260f2e3ac8aee85d18c21d7ff59b3ce7921045d5d"
    "ru"
  end
  language "uk" do
    sha256 "35f47061e831d7ddc78700fb6066a9f11c09037f81b9767ded1496c814b2b074"
    "uk"
  end
  language "zh-TW" do
    sha256 "939efbb82432c747a9d851003626f47377adeee62d2c06bdd2a40892c088fb80"
    "zh-TW"
  end
  language "zh" do
    sha256 "f4163c597ac253d0207bc40af5f48b68c081ca35071eb3e56b450ade19c0cecb"
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
