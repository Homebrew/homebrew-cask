cask "masscode" do
  arch arm: "-arm64"

  version "3.12.0"
  sha256 arm:   "debc329c0d01d0b3213d39170fa1363422dda732ac0e7d7b9967fc4f7d315943",
         intel: "54ed1eb5c11667afde667243dac4d7cd9edf31db64380cd30ff94db75683bde0"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
