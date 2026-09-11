cask "shichizip-zs" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "251ef25fb53b38393509de15b010eeaf2f29e425849bd4fa45b026ce6e849b04",
         intel: "2e99aee198525804d54cb751e6b59774fe60fbdb6c0fb05155a66ea963a40e46"

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
