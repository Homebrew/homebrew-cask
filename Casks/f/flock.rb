cask "flock" do
  version "2.2.513"
  sha256 "610d73f1792905a4dd6c0dbbd27dd83a40e3c7d482784a298d4623ada8621ff6"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg",
      verified: "flock.co/"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  livecheck do
    url "https://bingo.flock.co/dl.php?client=mac"
    strategy :header_match
  end

  app "Flock.app"

  zap trash: [
    "~/Library/Application Support/Flock",
    "~/Library/Logs/Flock",
    "~/Library/Preferences/to.go.osx.plist",
    "~/Library/Saved Application State/to.go.osx.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
