cask "goxel" do
  version "0.13.0"
  sha256 "444bf005616958435fd53bae0a6e69d13bd9d1cd09c4da1fee79b4d77924b779"

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
