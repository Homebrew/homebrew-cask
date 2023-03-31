cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.3.29"
  sha256 arm:   "47221eafd89f2797841da5ec80706bf5ae5937f089b1d1166d49c3030c7119d3",
         intel: "1d57bef5d599557fff4548f846829d8d9bfbb43bfbd2e378709f194ff5e9ff7b"

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
