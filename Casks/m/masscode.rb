cask "masscode" do
  arch arm: "-arm64"

  version "3.8.0"
  sha256 arm:   "4e6d1e87d393aca5293730def40761daf46a11948804aef6d0be80ed26849b24",
         intel: "c1c2446c84b52b55c0ba1a0108267f2c0638dcfe5716cc35d2dcc4b53c22fded"

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
