cask "equinox" do
  version "1.0.1"
  sha256 "9d7d6a8d2faba8b25a7610e86fc320f7ba568b84058df16319ad16e79ee2fbc6"

  url "https://github.com/rlxone/Equinox/releases/download/v#{version}/Equinox.dmg",
      verified: "https://github.com/rlxone/Equinox/"
  name "equinox"
  desc "Create dynamic wallpapers"
  homepage "https://equinoxmac.com/"

  depends_on macos: ">= :mojave"

  app "Equinox.app"

  zap trash: [
    "~/Library/Application Scripts/com.rlxone.equinox",
    "~/Library/Containers/com.rlxone.equinox",
  ]
end
