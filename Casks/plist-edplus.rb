cask "plist-edplus" do
  version "1.0.64"
  sha256 :no_check

  url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac.dmg"
  name "plist-edplus"
  desc "Open source cross-platform lightweight Plist file editor"
  homepage "https://github.com/ic005k/PlistEDPlus"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PlistEDPlus.app"

  uninstall quit: "z.PlistEDPlus"

  zap trash: [
    "~/Library/Preferences/z.PlistEDPlus.plist",
    "~/Library/Saved Application State/z.PlistEDPlus.savedState",
  ]
end
