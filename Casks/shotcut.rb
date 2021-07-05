cask "shotcut" do
  version "21.05.18"

  if Hardware::CPU.intel?
    sha256 "d2c9e343bbb0c3169271f75cc0d98f2efd1b2a3cb3643f893b731e22da0c3cc4"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  else
    sha256 "98c699db79e3f07a8fd02627f3f81cde7088991616e53c80f8ddd50928fef962"

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
