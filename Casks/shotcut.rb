cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "21.12.24"

  if Hardware::CPU.intel?
    sha256 "994586b634078af0ffd7d946dfe00167120f942f87d39019b48071aad3a06833"
  else
    sha256 "98eb1c0b529024810dabd6097d6051683bee70c01962dfba23905c79ab0f4dff"
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
