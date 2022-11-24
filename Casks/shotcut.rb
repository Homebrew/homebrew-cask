cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.10.25"
  sha256 arm:   "b6adf6fe12f51622550e6fbb2bfbd17237bb83ab4d278c3a2ae073472a7af89d",
         intel: "a2f949e74dc091537f18aaf88cee8e38e4c88fc5b25dd610f64e603463d2c980"

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
