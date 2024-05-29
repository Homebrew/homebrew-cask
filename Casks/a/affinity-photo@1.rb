cask "affinity-photo@1" do
  version "1.10.8"
  sha256 "02b1f30f890ae58cab9fa8bf9a509f4a9d8ad8c09de79baf499cd6f6fdd5bfb1"

  url "https://affinity-update.s3.amazonaws.com/mac/retail/Affinity%20Photo-#{version}.app.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Photo"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-photo"
    strategy :sparkle, &:version
  end

  auto_updates true

  app "Affinity Photo.app"

  zap trash: [
    "~/Library/Application Support/Affinity Photo",
    "~/Library/Caches/com.seriflabs.affinityphoto",
    "~/Library/Saved Application State/com.seriflabs.affinityphoto.savedState",
  ]
end
