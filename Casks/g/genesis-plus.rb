cask "genesis-plus" do
  version "1.3.5"
  sha256 "bb7e8afd907de697efe639ceee90043eee30a402627b99224a80dd83c852be39"

  url "https://www.bannister.org/software/dlh/gplus-#{version.no_dots}.zip"
  name "Genesis Plus"
  desc "Sega Genesis/MegaDrive emulator"
  homepage "https://www.bannister.org/software/gplus.htm"

  livecheck do
    url :homepage
    regex(/<h2>Genesis\s+Plus\s+v?(\d+(?:\.\d+)+)[" <]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Genesis Plus v#{version}/Genesis Plus.app"

  zap trash: [
    "~/Library/Application Support/Bannister/Genesis Plus",
    "~/Library/Preferences/com.bannister.genesisplus.plist",
    "~/Library/Saved Application State/com.bannister.genesisplus.savedState",
  ]
end
