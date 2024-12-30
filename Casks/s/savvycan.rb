cask "savvycan" do
  version "213"
  sha256 "42fed699a17b4a7a2d06d6c3af4240503a4ae30a3fd041d108080f07942a0a9d"

  url "https://github.com/collin80/SavvyCAN/releases/download/V#{version}/SavvyCAN.dmg",
      verified: "github.com/collin80/SavvyCAN/releases/download/"
  name "SavvyCAN"
  desc "Qt5 based tool which can be used to load, save, and capture canbus frames"
  homepage "https://www.savvycan.com/"

  livecheck do
    url "https://github.com/collin80/SavvyCAN"
    strategy :github_latest
    regex(/V([\d.]+)/)
  end

  depends_on macos: ">= :high_sierra"

  app "SavvyCAN.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.SavvyCAN.savedState"

  caveats do
    requires_rosetta
  end
end
