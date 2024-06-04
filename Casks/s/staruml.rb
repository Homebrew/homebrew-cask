cask "staruml" do
  arch arm: "-arm64"

  version "6.1.1"
  sha256 arm:   "d0788ea168867c44cb0c08a7bbe11631c552502f366f11014c5afcf330cb97a4",
         intel: "a2d770631cf59bf82658dc3fd971a27e34e9b29e343516e6c29d90160a5b4d6a"

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
