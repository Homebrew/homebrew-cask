cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.10.7"
  sha256 arm:   "8bf5ddb3fd1b3290e1228b754aa8d46d8b587f183de234dc7ac6eea46c48d475",
         intel: "5d6ac71e82dc1725442e6068f06841039d9343745c0d9b49b83947def8686d70"

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
