cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.09.23"
  sha256 arm:   "ab91a3a0a18ccb1f9486ad95a5d5f87899a6aa3e3f918eb1f0834ed361f457c2",
         intel: "63d9a80c2a0afb5aaefdbf4d77b3301e4d9629f719b8b3bce13c68373b32b46b"

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
