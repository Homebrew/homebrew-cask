cask "itsypad" do
  version "1.17.0"
  sha256 "8cf7bb251af4229496dccbdb0004a949cb9feff469adbd71cd12dc7050304c68"

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
