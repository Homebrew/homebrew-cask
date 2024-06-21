cask "orka-desktop@beta" do
  version "3.0.0-beta.1"
  sha256 "73979664b53c186e28ce83962639151a63c50be3fdddad2348c7a634bdfd85d8"

  url "https://github.com/macstadium/orka-desktop/releases/download/#{version}/OrkaDesktop-#{version}.dmg"
  name "Orka Desktop (Beta)"
  desc "Run macOS virtual machines locally and build images for use with Orka"
  homepage "https://github.com/macstadium/orka-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+-beta\.\d+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Orka Desktop.app"

  zap trash: "~/orka-toolkit/"
end
