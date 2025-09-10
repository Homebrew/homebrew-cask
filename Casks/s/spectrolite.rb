cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "abd6320274440f21b6941028c9c143d77daecf9f768da28f514ce5fa8569395d",
         intel: "5d86094c7097946f1f59b9d817b22bdbb637e8aaf18c2a0335dc695d198238d8"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.dmg"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
