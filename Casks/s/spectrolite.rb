cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.8"
  sha256 arm:   "233f2c84df76e3dd22642b6d4d52d6aebc61e4443849a235b31d9049ecc73f9f",
         intel: "30a77a2d6f61565d1eaff732d3e2f8418ec068c68ae1a9799a52d79b69f784ec"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.zip"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
