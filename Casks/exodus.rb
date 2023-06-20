cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.6.19"
  sha256 arm:   "9d5abde8bfdfea81688115550d8352eca5dab5c80bc91ddef6f61c5d58847fc2",
         intel: "ac7abfc373ab75048c15acd32ed4947854d341399df4e187bfee03142683a905"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
