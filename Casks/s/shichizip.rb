cask "shichizip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.5"
  sha256 arm:   "f8b915a6f08e5de3290a890bda7e52dbc9a91790dc48a42a639c34ba94d23521",
         intel: "31cbe2b996e4d31d86e4a1754524970de042090b80a5af5114395ab3ca2324df"

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
