cask "openmw" do
  arch arm: "arm64", intel: "amd64"

  version "0.48.0"
  sha256 arm:   "72fdb7bc24d55685dfcd2973555e7a41bf7b7aabba0515c02904a48f48be6b05",
         intel: "b3fa91fe8055690cc0b3b5518e6cbbdd31825b5b3c937a748843c95400336ccf"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}-macos-#{arch}.dmg",
      verified: "github.com/OpenMW/openmw/"
  name "OpenMW"
  desc "Open-source open-world RPG game engine that supports playing Morrowind"
  homepage "https://openmw.org/"

  livecheck do
    url :url
    regex(/openmw[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "OpenMW.app"
  app "OpenMW-CS.app"

  zap trash: [
    "~/Library/Application Support/openmw",
    "~/Library/Preferences/openmw",
    "~/Library/Preferences/org.openmw.openmw.plist",
    "~/Library/Saved Application State/org.openmw.*.savedState",
  ]
end
