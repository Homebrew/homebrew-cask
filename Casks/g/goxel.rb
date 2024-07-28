cask "goxel" do
  version "0.15.1"
  sha256 "914f1fff5e1c2ffe28c5ae75dc661cb0d3e8b3e10fe7744f950c1304b0e59037"

  url "https://github.com/guillaumechereau/goxel/releases/download/v#{version}/goxel-#{version}-mac.zip",
      verified: "github.com/guillaumechereau/goxel/"
  name "Goxel"
  desc "Open Source Voxel Editor"
  homepage "https://goxel.xyz/"

  app "Goxel.app"

  zap trash: [
    "~/Library/Application Support/Goxel",
    "~/Library/Preferences/com.noctuasoftware.goxel.plist",
    "~/Library/Saved Application State/com.noctuasoftware.goxel.savedState",
  ]
end
