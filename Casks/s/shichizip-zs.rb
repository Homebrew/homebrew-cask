cask "shichizip-zs" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "19987c1b9482caa95f3cd3f9c449e2776f91fd458445abf72a79af7e9c55d1a0",
         intel: "61b573ea7bedbf2632a9d1eabe9a5f8f903139f22427b29d3c97905762375e27"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZipZS-v#{version}-#{arch}.zip"
  name "ShichiZip ZS"
  desc "7-Zip derivative GUI based on mcmilk/7-Zip-zstd"
  homepage "https://github.com/idawnlight/ShichiZip"

  depends_on macos: :ventura

  app "ShichiZip ZS.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZipZS.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZipZS",
    "~/Library/Preferences/ee.dawn.ShichiZipZS.plist",
  ]
end
