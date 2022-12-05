cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.12.5"
  sha256 arm:   "d04dfa670a9c92477b298879cb652421a3eafb60f3e3ed151c2e6e73e9a33e2f",
         intel: "ec974b907e0d016e9481b1dc468e7452b9f321e775a888786eb8e845635b34cc"

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
