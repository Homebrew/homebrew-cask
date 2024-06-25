cask "staruml" do
  arch arm: "-arm64"

  version "6.1.2"
  sha256 arm:   "b94d5ec9b7229228c5270d05e71bc1812ff71adf2075fe88ab29f2f029de04ef",
         intel: "304fe708258035733cd8e6d9760d4dd847a2317d8b3c2ba7ab84dd77c5b6c82b"

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
