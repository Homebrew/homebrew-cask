cask "paletro" do
  version "1.4.0"
  sha256 "a5389359301889fd848fd9d1800e34a5e320f1c5b411889ed14bc28a998a18b8"

  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  appcast "https://appmakes.io/paletro/update.xml"
  name "Paletro"
  homepage "https://appmakes.io/paletro"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Paletro.app"

  zap trash: [
    "~/Library/Application Scripts/io.appmakes.PaletroLaunchHelper",
    "~/Library/Application Support/Paletro",
    "~/Library/Application Support/Paletro Preferences",
    "~/Library/Application Support/io.appmakes.Paletro",
    "~/Library/Containers/io.appmakes.PaletroLaunchHelper",
    "~/Library/Cookies/io.appmakes.Paletro.binarycookies",
    "~/Library/Group Containers/io.appmakes.Paletro.shared",
    "~/Library/Preferences/io.appmakes.Paletro.Preferences.plist",
    "~/Library/Preferences/io.appmakes.Paletro.plist",
  ]
end
