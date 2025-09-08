cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.1.1"
  sha256 arm:   "6df092a58bc78f06409b0de6d3aaa3bddd9577b0df8554443e8a2117369c2e67",
         intel: "6e12ae55a2d791aa009a384c707142b5d3a5da2e6df9289a69fa5aafa927ce0d"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-#{arch}.zip",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
