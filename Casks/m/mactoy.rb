cask "mactoy" do
  version "0.8.2"
  sha256 "6f4585dc75d4bbb47d05935b475ca342d4dc0c0caa3f2bca6c007e37596c1b5c"

  url "https://github.com/cashcon57/mactoy/releases/download/v#{version}/Mactoy-#{version}.dmg"
  name "Mactoy"
  desc "Ventoy installer and disk image flasher"
  homepage "https://github.com/cashcon57/mactoy"

  depends_on macos: :ventura

  app "Mactoy.app"

  uninstall launchctl: "com.mactoy.mactoyd",
            quit:      "com.mactoy.Mactoy"

  zap trash: [
    "/Library/Application Support/Mactoy",
    "~/Library/Application Support/Mactoy",
    "~/Library/Caches/com.mactoy.Mactoy",
    "~/Library/HTTPStorages/com.mactoy.Mactoy",
    "~/Library/Preferences/com.mactoy.Mactoy.plist",
  ]
end
