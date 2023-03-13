cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.3.13"
  sha256 arm:   "66212bbb230e8c3735d0a711f48559c77df99afb4007e5a6f55c41b35679674d",
         intel: "cae26c8e834a6c9c9a64d168c91ab5cdc2f54b8075429ab0b7b315c9762ed54e"

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
