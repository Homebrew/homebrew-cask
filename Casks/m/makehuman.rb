cask "makehuman" do
  version "1.2.0"
  sha256 "dbbaecc1286f20f65216f39dcb3021522ec89b6acd05c0ec769dfa22aa129c08"

  url "https://download.tuxfamily.org/makehuman/releases/makehuman-community-#{version}-macos.zip",
      verified: "tuxfamily.org/makehuman/"
  name "MakeHuman"
  desc "Open Source tool for making 3D characters"
  homepage "http://www.makehumancommunity.org/"

  livecheck do
    url "https://download.tuxfamily.org/makehuman/releases/"
    regex(/makehuman[._-]community[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip/i)
  end

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
