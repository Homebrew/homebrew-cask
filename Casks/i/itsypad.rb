cask "itsypad" do
  version "1.18.0"
  sha256 "d93d98de4e33bffa071f19264bb1f5ed10c3bbde654370b721a4ec6f2cff7bbe"

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
