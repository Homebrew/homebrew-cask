cask "mactoy" do
  version "0.8.0"
  sha256 "74a744d526084236497397b26b1563511ebf2f1ee0cd1d2a66efdee16938f5ad"

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
