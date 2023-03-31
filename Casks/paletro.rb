cask "paletro" do
  version "1.8.0"
  sha256 "58feb6dcb7a87d2fa0a4f0db71b2f3aed3659d32a493e45fe332b79d3c54d74a"

  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  name "Paletro"
  desc "Command palette in any application"
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
