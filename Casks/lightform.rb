cask "lightform" do
  version "2.0.6.920"
  sha256 "f9e18c15a5648b096f5c38c9554bb3b601b3f1ae5c47d9030cde350452b12341"

  url "https://software.webservices.lumenous3d.com/app/Lightform-#{version}-release-public-macos.dmg",
      verified: "software.webservices.lumenous3d.com/app/"
  name "Lightform Creator"
  desc "AR projection and audio reactivity software for Lightform devices"
  homepage "https://lightform.com/creator"

  app "Lightform.app"

  zap trash: [
    "~/Library/Application Support/Lightform",
    "~/Library/Caches/Lightform",
    "~/Library/Preferences/com.lightform.desktop.plist",
    "~/Library/Saved Application State/com.lightform.desktop.savedState",
  ]
end
