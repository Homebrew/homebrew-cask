cask "equinox" do
  version "2.0"
  sha256 "6f10fecbc09619a80b78980cef476d78e55c7ef02cac07e75816a7c7be8113b1"

  url "https://github.com/rlxone/Equinox/releases/download/v#{version}/Equinox.dmg",
      verified: "github.com/rlxone/Equinox/"
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
