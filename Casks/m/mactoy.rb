cask "mactoy" do
  version "0.7.1"
  sha256 "5b01c6f1717146cefeecc7c94f5dbf3bfe50bd24c1dde1f2cc77454103c5a669"

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
