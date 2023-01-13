cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.12.21"
  sha256 arm:   "b473b7c553179e3a8bf0e2a0a21bc60df918b0f997a793e4c4a7586a6875c6d5",
         intel: "f13b73d965ca2b8de2e436d9adfbd688fd7e213c356fa5a0c38352979203b890"

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
