cask "paletro" do
  version "1.5.0"
  sha256 "e2aa88d381bd50536d585a9532d94e7ac071ba5d8209b7cfb98eb63c5f7af4df"

  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  name "Paletro"
  homepage "https://appmakes.io/paletro"

  livecheck do
    url "https://appmakes.io/paletro/update.xml"
    strategy :sparkle
  end

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
