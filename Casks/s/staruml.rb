cask "staruml" do
  arch arm: "-arm64"

  version "6.2.1"
  sha256 arm:   "c9af2838605bf5e4a94ac75444b97eaac7e06d1294fb0ce6f14843d7517b9a9e",
         intel: "f5831f3546f38ad50edf85a1bd202bd5e964df3e740c1accda3d058ffc51f10f"

  url "https://files.staruml.io/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeller"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/download/"
    regex(%r{href=.*?/StarUML[._-]v?(\d+(?:\.\d+)*)#{arch}\.dmg}i)
  end

  app "StarUML.app"

  zap trash: [
    "~/Library/Application Support/StarUML",
    "~/Library/Preferences/io.staruml.staruml.plist",
    "~/Library/Saved Application State/io.staruml.staruml.savedState",
  ]
end
