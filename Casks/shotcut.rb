cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.11.25"
  sha256 arm:   "548c88cf2dd8f32b53748926cb99da1d2218c084335958ed6159106e3429dc34",
         intel: "17b21eb2a206e7f11e32a8c1182cacaeaddeadb754fc06122371c2d458e5dd63"

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
