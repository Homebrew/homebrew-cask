cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "7fbeaf86a480f8556e1bc74d8138106d34cbe61870e714406b3c215c893a5b66",
         intel: "05078af8090407a5b28c080bc89a9d552371dc6a701603d75c0237a95943523a"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.dmg"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  no_autobump! because: :requires_manual_review

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
