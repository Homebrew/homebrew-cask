cask "porting-kit" do
  version "4.2.29"
  sha256 "de339851d593d3f987184bd385436edb075a40079752e412095e89926016e7ce"

  url "https://github.com/vitor251093/porting-kit-releases/releases/download/v#{version}/Porting-Kit-#{version}.dmg",
      verified: "github.com/vitor251093/porting-kit-releases/"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Porting Kit.app"
end
