cask "masscode" do
  arch arm: "-arm64"

  version "3.7.0"
  sha256 arm:   "99e1bb681af61b190db98012eaa179d441c5eeeb28c3a7811cd2fb1be69f897c",
         intel: "9cb708bddb096c7b16eff76574ae0cf23bc41e02fbf5c3667fd18a94ad655123"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
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
