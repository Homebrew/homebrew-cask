cask "flirc" do
  version "3.27.19"
  sha256 "da00f51a8b64f1e7fbb75bc229e715428efe5059d06607fe5571a4e1bc011454"

  url "https://flirc.com/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg",
      verified: "flirc.com/"
  name "Flirc"
  desc "IR USB receiver configurator"
  homepage "https://flirc.tv/"

  livecheck do
    url "https://flirc.com/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "Flirc.app"

  zap trash: [
    "~/Library/HTTPStorages/com.flirc.Flirc",
    "~/Library/HTTPStorages/com.flirc.Flirc.binarycookies",
    "~/Library/Preferences/com.flirc.Flirc.plist",
  ]

  caveats do
    requires_rosetta
  end
end
