cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.11.4"
  sha256 arm:   "a89d39e9c5a49a5d90a7f1e1ec57b8c384e6cc290a84a9b4db099909dce03875",
         intel: "bbde4e2f0820a5ab7454c179cbc35d50d99680e7ddcd5cf6df1dc3c8e72c9aa4"

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
