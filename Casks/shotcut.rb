cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "22.04.25"

  if Hardware::CPU.intel?
    sha256 "56a08a2d49828409ecbcf261434ea04a1f5871f637130e2fa08ba80240e045b0"
  else
    sha256 "415ab4aab0e3a7f048ab13172832650202c636522b294b502e23eff39e060c88"
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
