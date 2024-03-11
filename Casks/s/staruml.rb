cask "staruml" do
  arch arm: "-arm64"

  version "6.1.0"
  sha256 arm:   "7a39ed773340c58e13396b92ca81e8b4d03009af4fa598a05f1195aa60869fa1",
         intel: "02c1a1bc75fae6a001189b543d12a1318e73203b26d4a3fa5fa9d3b149becf64"

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
