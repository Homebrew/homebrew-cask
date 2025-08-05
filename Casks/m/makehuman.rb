cask "makehuman" do
  version "1.2.0"
  sha256 "dbbaecc1286f20f65216f39dcb3021522ec89b6acd05c0ec769dfa22aa129c08"

  url "https://download.tuxfamily.org/makehuman/releases/makehuman-community-#{version}-macos.zip",
      verified: "tuxfamily.org/makehuman/"
  name "MakeHuman"
  desc "Open Source tool for making 3D characters"
  homepage "https://static.makehumancommunity.org/"

  disable! date: "2025-01-04", because: :no_longer_available

  depends_on macos: ">= :sierra"

  app "MakeHuman.app"

  zap trash: [
        "~/Documents/MakeHumanv#{version.major}py3",
        "~/Library/Saved Application State/org.pythonmac.unspecified.MakeHuman.savedState",
      ],
      rmdir: "~/Documents/MakeHumanv#{version.major}py3"

  caveats do
    requires_rosetta
  end
end
