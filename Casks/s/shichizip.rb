cask "shichizip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "b71a7ee226c338262ba84073e20d2483c94127cb07c0c131c1846c8d36edeeaf",
         intel: "9d2ca7aba0c42ee9a1a34f9d131edc6ebb2fa008622764f9033e5a95566d01f2"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZip-v#{version}-#{arch}.zip"
  name "ShichiZip"
  desc "7-Zip derivative GUI"
  homepage "https://github.com/idawnlight/ShichiZip"

  depends_on macos: :sonoma

  app "ShichiZip.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZip.CompressAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.SmartQuickExtractAction",
    "~/Library/Application Scripts/VNM753Y3JX.ShichiZip",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ee.dawn.shichizip.sfl*",
    "~/Library/Containers/ee.dawn.ShichiZip.CompressAction",
    "~/Library/Containers/ee.dawn.ShichiZip.OpenInShichiZipAction",
    "~/Library/Containers/ee.dawn.ShichiZip.RevealInFileManagerAction",
    "~/Library/Containers/ee.dawn.ShichiZip.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZip",
    "~/Library/Preferences/ee.dawn.ShichiZip.plist",
  ]
end
