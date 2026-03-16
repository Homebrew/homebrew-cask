cask "amiberry" do
  version "8.0.0"
  sha256 "6a40360afb5fa391445ade177815e711677b8f83adf105897cf104c7e4bf37f0"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-universal.zip",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "Amiberry-#{version}-Darwin.dmg"

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
