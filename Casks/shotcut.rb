cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "22.03.30"

  if Hardware::CPU.intel?
    sha256 "509bb458e935367cf8bf1a03c7bcec10fa3e9011adf8a58b7fbec9bd4192c33a"
  else
    sha256 "209e067c3ec499b85d25555d40112dafc8e818e23bed2a97ed3bfc6ab9b55554"
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
