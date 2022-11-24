cask "genesis-plus" do
  version "1.3.4"
  sha256 "9217fce1f150a1a1e63d6bef73df0d8f9aecb97255b7aced61d2032ef3c7c126"

  url "https://www.bannister.org/software/dlq/gplus-#{version.no_dots}.zip"
  name "Genesis Plus"
  desc "Sega Genesis/MegaDrive emulator"
  homepage "https://www.bannister.org/software/gplus.htm"

  livecheck do
    url :homepage
    regex(/<h2>Genesis\s+Plus\s+v?(\d+(?:\.\d+)+)[" <]/i)
  end

  depends_on macos: ">= :mojave"

  app "Genesis Plus v#{version}/Genesis Plus.app"

  zap trash: [
    "~/Library/Application Support/Bannister/Genesis Plus",
    "~/Library/Preferences/com.bannister.genesisplus.plist",
    "~/Library/Saved Application State/com.bannister.genesisplus.savedState",
  ]
end
