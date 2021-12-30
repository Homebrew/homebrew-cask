cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "21.10.31"

  if Hardware::CPU.intel?
    sha256 "37c7afd53931711b8bbb37a0490e4052b972b97455140a558f8f3896189d6a2f"
  else
    sha256 "1dca894a0733afc43445de194a69e3bf41f72acfde90bef6bc96e6f050b49611"
  end

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-#{arch}-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
