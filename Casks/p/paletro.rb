cask "paletro" do
  version "1.11.0"
  sha256 "6b2d354e9d46d42c51011592940d1375e8e3d6da6953b6872d22958a8ff37430"

  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  name "Paletro"
  desc "Command palette in any application"
  homepage "https://appmakes.io/paletro"

  livecheck do
    url "https://appmakes.io/paletro/update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Paletro.app"

  zap trash: [
    "~/Library/Application Scripts/io.appmakes.PaletroLaunchHelper",
    "~/Library/Application Support/io.appmakes.Paletro",
    "~/Library/Application Support/Paletro Preferences",
    "~/Library/Application Support/Paletro",
    "~/Library/Containers/io.appmakes.PaletroLaunchHelper",
    "~/Library/Cookies/io.appmakes.Paletro.binarycookies",
    "~/Library/Group Containers/io.appmakes.Paletro.shared",
    "~/Library/Preferences/io.appmakes.Paletro.plist",
    "~/Library/Preferences/io.appmakes.Paletro.Preferences.plist",
  ]
end
