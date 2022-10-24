cask "shotcut" do
  arch arm: "macos-ARM64", intel: "macos"

  version "22.10.22"
  sha256 arm:   "3006f44a233deb29745a9e58cae72e933dd6152cd3d01437cd90381c9ff0ddde",
         intel: "7a50d75f56a891fac25bc7413f18a8798f06b799ff54222dbaf0ef4f80edac2c"

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
