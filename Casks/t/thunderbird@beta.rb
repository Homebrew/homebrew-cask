cask "thunderbird@beta" do
  version "135.0b1"

  language "cs" do
    sha256 "46322d63173342f25800cbb9c34cd8ab04201d96e1d36126a3ee989b3d6889e8"
    "cs"
  end
  language "de" do
    sha256 "4e453211be7924a3b00a330bb9f525a32f3a815d75d598d8b0245ab94e0f6399"
    "de"
  end
  language "en-GB" do
    sha256 "30db1d60d876413dccf875121a0ea9f415d9e213a1a267d60043bd191f32d0c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c78bd61e662958b4975c40a8940c59277c2f2b597b20343c4168e4f516aee9c4"
    "en-US"
  end
  language "fr" do
    sha256 "d9197008817419b66f02a1fa622c0a9ef634eb35e25c933137117a8c104e497f"
    "fr"
  end
  language "gl" do
    sha256 "7e64e6d1dd327d7b29cafbda18db1f40ff4ecc2f900922df54850fbe808ca0b1"
    "gl"
  end
  language "it" do
    sha256 "4364f06b601009212c2188d1ef12fc608d04b6b5b1a3a900a4b46ee50dc2d074"
    "it"
  end
  language "ja" do
    sha256 "ad78cf9ad7f6f1270195f7f3e431f365a7c8a9b119ba8e15ebb690630c7707fd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9acc8876565f2c02762f32b0786abe590b568d54795fffe14e42e55e626d1e7f"
    "nl"
  end
  language "pl" do
    sha256 "eeab3863d5a5b900fce065203c850c22da15706ba37ad556ff303f7521234579"
    "pl"
  end
  language "pt" do
    sha256 "91d9eae97e997bd6bceec6265b880cfd04aaed384213a525c7b7dd71752fff63"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "48de9e71aea151c21a83184cc2c2ee640ab8536fafb96f301b11ecb38986c991"
    "pt-BR"
  end
  language "ru" do
    sha256 "07013367cf938cd749be7d73f96afd75a956e82ca48d55ea2d91288a74f140fb"
    "ru"
  end
  language "uk" do
    sha256 "6a25a6c4818541be676a5ba469b5c6c821d1752cd08c64039a7b7b5bc4c8369e"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb1ff39fdc7473860ceb078adf7e3d22807c1df542f4b812f1fb7a37d291426a"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd6e8f6a75004559e201c91ffc5ea4ebb6d6ccb01aa8a493f967c30f0ef4b54d"
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
  depends_on macos: ">= :catalina"

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
