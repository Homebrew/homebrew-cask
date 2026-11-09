cask "mactoy" do
  version "0.8.1"
  sha256 "c3e8ce8b0ffb3e37bb2420e8b37770f76d5b1a8c42f83b82a2eaad2aa9e6de25"

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
