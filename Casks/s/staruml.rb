cask "staruml" do
  arch arm: "-arm64"

  version "6.0.1"
  sha256 arm:   "c897479c91dfeddc3efbf8b67a68e93cdcd4881d54c27b21def5768e8279446e",
         intel: "43095e53aff0b327a3710b872aa20413196bca6a5e473ccc1ff3bbbf7559670b"

  url "https://files.staruml.io/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/download"
    regex(%r{href=.*?/StarUML[._-]v?(\d+(?:\.\d+)*)#{arch}\.dmg}i)
  end

  app "StarUML.app"

  zap trash: [
    "~/Library/Application Support/StarUML",
    "~/Library/Preferences/io.staruml.staruml.plist",
    "~/Library/Saved Application State/io.staruml.staruml.savedState",
  ]
end
