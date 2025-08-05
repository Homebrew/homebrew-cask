cask "affinity-designer@1" do
  version "1.10.8"
  sha256 "7c3d9ce7e42dd8f3b3cf7f37aaffde3a59f33087007b9a2c81d86baceaa39ef6"

  url "https://affinity-update.s3.amazonaws.com/mac/retail/Affinity%20Designer-#{version}.app.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Designer"
  desc "Professional graphic design software"
  homepage "https://affinity.serif.com/en-us/designer/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-designer"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Affinity Designer.app"

  zap trash: [
    "~/Library/Application Support/Affinity Designer",
    "~/Library/Caches/com.seriflabs.affinitydesigner",
    "~/Library/Saved Application State/com.seriflabs.affinitydesigner.savedState",
  ]
end
