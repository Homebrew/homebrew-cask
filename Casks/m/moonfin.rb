cask "moonfin" do
  version "2.3.0"
  sha256 "fbf22172b2e3a4e13ccf49c07cf07d02eca469c0f63c1ed062fbd099b0b0c9ba"

  url "https://github.com/Moonfin-Client/Moonfin-Core/releases/download/v#{version}/Moonfin_macOS_v#{version}.dmg",
      verified: "github.com/Moonfin-Client/Moonfin-Core/"
  name "Moonfin"
  desc "Premium media streaming clients for Jellyfin and Emby"
  homepage "https://moonfin.io/"

  depends_on :macos
  
  app "Moonfin.app"

end