cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.3"
  sha256 arm:   "5cd5979c31f67c319dc4b056e3f55354c43b87cf54a2a9a3dcca1d25349ffa37",
         intel: "167d2a2349541deca7c2298430e9c65c7073a37ac7fa56e567305e5b91c43288"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.dmg"
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
