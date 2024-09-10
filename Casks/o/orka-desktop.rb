cask "orka-desktop" do
  version "3.0.0"
  sha256 "c0b5c99a73f7b627d5091eea3fa6458115c48a0d3bb64b0d47d4543d4a2e4588"

  url "https://github.com/macstadium/orka-desktop/releases/download/#{version}/OrkaDesktop-#{version}.dmg"
  name "Orka Desktop"
  desc "Run macOS virtual machines locally and build images for use with Orka"
  homepage "https://github.com/macstadium/orka-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Orka Desktop.app"

  zap trash: "~/orka-toolkit/"
end
