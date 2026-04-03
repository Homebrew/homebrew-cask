cask "bluefish" do
  version "2.4.1"
  sha256 "7f80c573023ee21b7029d43ef99e0a7ad6aab48997e37d53f5c6ce1181bd53ae"

  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg",
      verified: "bennewitz.com/"
  name "Bluefish"
  desc "Open source code editor"
  homepage "https://bluefish.openoffice.nl/index.html"

  livecheck do
    url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
    regex(/href=.*?Bluefish[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
