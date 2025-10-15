cask "orka-desktop" do
  version "3.1.0"
  sha256 "9c3389511bc9fae3572a79c08f6a8dfaeb21f4b5ed79f7a0b428554659d44c51"

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
