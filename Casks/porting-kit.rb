cask "porting-kit" do
  version "5.4.0"
  sha256 "0ec8e0ec515204a6272cf6e4462abc705ac284bf91eb26ba1be5121f34d61b77"

  url "https://github.com/vitor251093/porting-kit-releases/releases/download/v#{version}/Porting-Kit-#{version}.dmg",
      verified: "github.com/vitor251093/porting-kit-releases/"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Porting Kit.app"

  zap trash: [
    "~/Library/Preferences/com.paulthetall.portingkit.plist",
    "~/Library/Saved Application State/com.paulthetall.portingkit.savedState",
  ]
end
