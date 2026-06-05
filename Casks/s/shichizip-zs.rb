cask "shichizip-zs" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "60385d3cdec54ffc32d6d76ad9fdd0d6a17041554eec4ae88867a7f24a846a1b",
         intel: "f94db7dc8b378b88fbb77b3b883277df7091d894b3a5db5e0e21d5bf63bc0a75"

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
