cask "goxel" do
  version "0.15.1"
  sha256 "5a9213166e77bbb80f839499943af37524f5866f37d1948bcaddf9a3fec8f27a"

  url "https://github.com/guillaumechereau/goxel/releases/download/v#{version}/goxel-#{version}-mac.zip",
      verified: "github.com/guillaumechereau/goxel/"
  name "Goxel"
  desc "Open Source Voxel Editor"
  homepage "https://goxel.xyz/"

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :mojave"

  app "Goxel.app"

  zap trash: [
    "~/Library/Application Support/Goxel",
    "~/Library/Preferences/com.noctuasoftware.goxel.plist",
    "~/Library/Saved Application State/com.noctuasoftware.goxel.savedState",
  ]
end
