cask "goxel" do
  version "0.15.0"
  sha256 "e265cbf9789260fd0776ccccbad5e5784cf299fcd4f6c0c957be6880c5b1c78c"

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
