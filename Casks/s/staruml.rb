cask "staruml" do
  arch arm: "-arm64"

  version "6.2.2"
  sha256 arm:   "9093e4c07f48bedde2e46f951ade609517456aaf7492b8319f61bb1afb88a626",
         intel: "545ad64eea42a83d1a66932666e7d5465efe64d255e63340c89acdec33eee472"

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
