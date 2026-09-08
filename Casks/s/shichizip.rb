cask "shichizip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "b7511b42cac66bd5e9d4de0f6e345a391bf3229a34ff7ecc62bf11c27361132c",
         intel: "589260a85e96c5e601cea523d2cc9f548e0d83e925086704ce65a3ec7f5f4e1f"

  url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZip-v#{version}-#{arch}.zip"
  name "ShichiZip"
  desc "7-Zip derivative GUI"
  homepage "https://github.com/idawnlight/ShichiZip"

  depends_on macos: :ventura

  app "ShichiZip.app"

  zap trash: [
    "~/Library/Application Scripts/ee.dawn.ShichiZip.OpenInShichiZipAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.RevealInFileManagerAction",
    "~/Library/Application Scripts/ee.dawn.ShichiZip.SmartQuickExtractAction",
    "~/Library/Group Containers/VNM753Y3JX.ShichiZip",
    "~/Library/Preferences/ee.dawn.ShichiZip.plist",
  ]
end
