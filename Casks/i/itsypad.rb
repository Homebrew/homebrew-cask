cask "itsypad" do
  version "1.16.0"
  sha256 "bd00989b810b75944e0e21706409fcd51edc9bdec91458548f152fbfe9c9a4e2"

  url "https://github.com/nickustinov/itsypad-macos/releases/download/v#{version}/Itsypad-#{version}.dmg"
  name "Itsypad"
  desc "Tiny, fast scratchpad and clipboard manager"
  homepage "https://github.com/nickustinov/itsypad-macos"

  depends_on macos: :sonoma

  app "Itsypad.app"

  zap trash: [
    "~/Library/Application Support/Itsypad",
    "~/Library/Preferences/com.nickustinov.itsypad.plist",
  ]
end
