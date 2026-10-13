cask "shichizip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.3"
  sha256 arm:   "70baba25e52217482344846e50964342f0dc512d56572ebc958246d5f625a0a8",
         intel: "fdad150fece8bea0f46769bd82a71caaa98176953800bf54969399ddeb86b581"

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
