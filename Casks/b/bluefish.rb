cask "bluefish" do
  version "2.2.16"
  sha256 "63fe6f486d56021112527124b0bfc36677ef1dd1f005b081116fe435270f4ebc"

  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg",
      verified: "bennewitz.com/"
  name "Bluefish"
  desc "Open source code editor"
  homepage "https://bluefish.openoffice.nl/index.html"

  livecheck do
    url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
    regex(/href=.*?Bluefish[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Bluefish.app"

  zap trash: [
    "~/.bluefish",
    "~/Library/Preferences/nl.openoffice.bluefish.plist",
    "~/Library/Saved Application State/nl.openoffice.bluefish.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
