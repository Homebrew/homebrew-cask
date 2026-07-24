cask "moonfin" do
  version "2.3.1"
  sha256 "2b29bfe33d657204bb5dffc06cf8c9672c853b9e006e28e6676573fc4c817e1c"

  url "https://github.com/Moonfin-Client/Moonfin-Core/releases/download/v#{version}/Moonfin_macOS_v#{version}.dmg",
      verified: "github.com/Moonfin-Client/Moonfin-Core/"
  name "Moonfin"
  desc "Premium media streaming clients for Jellyfin and Emby"
  homepage "https://moonfin.io/"

  depends_on :macos
  
  app "Moonfin.app"

  zap trash: [
    "~/Library/Application Support/Moonfin"
  ]
end