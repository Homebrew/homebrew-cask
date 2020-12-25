cask "polymail" do
  version "2.2.5"
  sha256 "590423c3ec9b9d11d84f217129465d48caff965562c421c138768837ea67dd6c"

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name "Polymail"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true

  app "Polymail.app"
end
