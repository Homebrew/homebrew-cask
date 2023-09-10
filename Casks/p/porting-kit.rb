cask "porting-kit" do
  version "5.14.9"
  sha256 "5f9524b755276dc4537df961be0a74d6aaaea2f28d82c1a519ae06b22a12aa48"

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
