cask "shotcut" do
  version "21.08.29"

  if Hardware::CPU.intel?
    sha256 "931cfe920dd26269f3ad4202f769545f044eff082933267bde0a42a111fa43eb"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  else
    sha256 "e7db1625bd4e04920ef1496655e8a9e3169a3b89b756557ae9f3f3152ea18c84"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-ARM64-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  end

  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
