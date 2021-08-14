cask "porting-kit" do
  version "4.2.14"
  sha256 "7c04792e63a46b98a21e324c57abfcd59c24f7951a2d406a2bb6978ecf843e5c"

  url "https://github.com/vitor251093/porting-kit-releases/releases/download/v#{version}/Porting-Kit-#{version}.dmg",
      verified: "github.com/vitor251093/porting-kit-releases/"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Porting Kit.app"
end
