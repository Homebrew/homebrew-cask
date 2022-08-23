cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.06.23"
  sha256 arm:   "d68ab8eaf435deebdc5d7abc2a60915fc58d51d21977d72c89ddb46d4d511759",
         intel: "dda1d9f6ebb1013452055214d3d297bfd30adc3d1f97a764c15b15c36f98d1a2"

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
