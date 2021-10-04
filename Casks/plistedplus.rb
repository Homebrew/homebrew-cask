cask "plistedplus" do
  version "1.0.64"
  sha256 "43bb8f8a58710724065a7849084c3a2fdc3c3c35071486f9a7fcb08e74a5c92d"

  url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac.dmg"
  name "PlistEDPlus"
  desc "Plist file editor"
  homepage "https://github.com/ic005k/PlistEDPlus"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PlistEDPlus.app"

  uninstall quit: "z.PlistEDPlus"

  zap trash: [
    "~/Library/Preferences/z.PlistEDPlus.plist",
    "~/Library/Saved Application State/z.PlistEDPlus.savedState",
  ]
end
