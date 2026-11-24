cask "shichizip-zs" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "f855cb37de9f1ff8c490381c419d8473fcdff99c2bfd49dec62caa85c998bb19",
         intel: "53b16c330907e02e8e7365d0f59edc07ecd9f308a3d5d4cd81b1e8f4defee981"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZipZS-v#{version}-#{arch}.zip"
  name "ShichiZip ZS"
  desc "7-Zip derivative GUI based on mcmilk/7-Zip-zstd"
  homepage "https://github.com/idawnlight/ShichiZip"

  depends_on macos: :ventura

  app "ShichiZip ZS.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.CompressAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.SmartQuickExtractAction",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ee.dawn.shichizipzs.sfl*",
    "~/Library/Containers/ee.dawn.ShichiZipZS.CompressAction",
    "~/Library/Containers/ee.dawn.ShichiZipZS.OpenInShichiZipAction",
    "~/Library/Containers/ee.dawn.ShichiZipZS.RevealInFileManagerAction",
    "~/Library/Containers/ee.dawn.ShichiZipZS.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZipZS",
    "~/Library/Preferences/ee.dawn.ShichiZipZS.plist",
  ]
end
