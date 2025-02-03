cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.2"
  sha256 arm:   "9a854f92fa6b55c82c285b6ebf7c6b5027512514537bbceb00000b5c26cb4988",
         intel: "1a948a0259996f9cdc8e62f61b38cf2dcb93ae4f0404c351c2e3b66760035f88"

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
