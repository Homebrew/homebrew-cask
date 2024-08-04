cask "paletro" do
  version "1.10.0"
  sha256 "df1ec9aac253766ce1a59aab5e0a439e4d0cec2e50cd8ddb0f7c32f748c08ffd"

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
