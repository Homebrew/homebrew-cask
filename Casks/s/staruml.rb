cask "staruml" do
  arch arm: "-arm64"

  version "6.0.0"
  sha256 arm:   "11d04090d189125e4ab3d465a4ce07856fedb280be3118cfebf77497b5670372",
         intel: "11d04090d189125e4ab3d465a4ce07856fedb280be3118cfebf77497b5670372"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
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
