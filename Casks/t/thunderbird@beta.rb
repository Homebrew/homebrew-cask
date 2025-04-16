cask "thunderbird@beta" do
  version "138.0b3"

  language "cs" do
    sha256 "19fe32a0aeaf998607e35082bc890460ae4f54579d05102cce5a5fc0b78d8578"
    "cs"
  end
  language "de" do
    sha256 "91e872ea394a131ba0458a6c38dfb7794ba6c6f2ab58d748b40869887a9388bb"
    "de"
  end
  language "en-GB" do
    sha256 "cc0217a981c8fd27450b032dabb09ed77fecdfaca6125f6d790c2972fa090bef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f686d418a9c342bf1531b458911f3b2b602ba53c1c9d8154acda54d98f1cf241"
    "en-US"
  end
  language "fr" do
    sha256 "0c87e03732dad704a967c0b3e2aafd49262af8375913e404ddf79662738ca52a"
    "fr"
  end
  language "gl" do
    sha256 "af2bb61ba7842d140e1a3483e121b5b6ed01ecb4d3c7a1510680edb5df0f6369"
    "gl"
  end
  language "it" do
    sha256 "dc18f297df6032fc67e51f806dba099084b08cbeb7845ab0c50a5bfc8c4a8e91"
    "it"
  end
  language "ja" do
    sha256 "92124a2ddb23bdcf98b510c1ea7bd924cc0f01411a02a9db83039c51017dc884"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4e3bf13e6fce1b37af81fa9cc6df5a3c08e094c9e0c2c69fca6ccfad3b65cda2"
    "nl"
  end
  language "pl" do
    sha256 "dea4f140d7bf554cefc5b21607c80c277535307b4f7a00f6cae7bec155f538ac"
    "pl"
  end
  language "pt" do
    sha256 "12f883bf98e9737913d7f585ef6db8282dfd008bec53d141e28deca9395bf4cc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8f27ee9a79730b023cd9810002da3d7b3aadb852301cc090892119948d357ae3"
    "pt-BR"
  end
  language "ru" do
    sha256 "5906b6407f637988d8e84c11c0e9284f88a90b270a2457d2112a37c9bbd47ae5"
    "ru"
  end
  language "uk" do
    sha256 "ccccea4e50b149fee8150ff479ab37e1ad776a476174d554ecb58ef934e9c723"
    "uk"
  end
  language "zh-TW" do
    sha256 "9aaca87447ad66f11810e7c3cab5beb281f7ba095ac8790fcf311bb1db28b7d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "fde5636daf3040339943478549e1f45a4bbd269b207b6f9a663678e6cd4dd98c"
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
