cask "staruml" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "7c1b1bbb9bd6db5d8cdd5ec4bb74dd4bf8ce5d2da662f7dfa8d88e74e8566be2",
         intel: "390e84e784bd2d9df17f39b3c848777a75785eec2c09b0ca54b469af2abd79a2"

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
