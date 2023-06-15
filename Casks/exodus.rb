cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.6.9"
  sha256 arm:   "76401bccf78461a9fd0e20d6f1016569338771d05e4c3b119a602b1411840a10",
         intel: "a3e0bae301ad992a36d0432332b0a9f9b372263ab590f53781ade52c48dfa2ca"

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
