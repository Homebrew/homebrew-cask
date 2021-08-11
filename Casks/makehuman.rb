cask "makehuman" do
  version "1.2.0"
  sha256 "dbbaecc1286f20f65216f39dcb3021522ec89b6acd05c0ec769dfa22aa129c08"

  url "https://download.tuxfamily.org/makehuman/releases/makehuman-community-#{version}-macos.zip",
      verified: "tuxfamily.org/makehuman/"
  appcast "https://download.tuxfamily.org/makehuman/releases/"
  name "MakeHuman"
  desc "Open Souce tool for making 3D characters"
  homepage "http://www.makehuman.org/"

  depends_on macos: ">= :sierra"

  app "MakeHuman.app"
end
