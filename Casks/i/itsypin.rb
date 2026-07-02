cask "itsypin" do
  version "2.0.0"
  sha256 "cbb5f8d4a2f799205431e9a3dc89ab593066e71acab51cb2ae3a77da7ce53b04"

  url "https://github.com/nickustinov/itsypin-macos/releases/download/v#{version}/Itsypin-#{version}.dmg"
  name "Itsypin"
  desc "Pin websites to the menu bar or floating bubbles"
  homepage "https://github.com/nickustinov/itsypin-macos"

  depends_on macos: :ventura

  app "Itsypin.app"

  zap trash: [
    "~/Library/Caches/com.itsypin.app",
    "~/Library/HTTPStorages/com.itsypin.app",
    "~/Library/Preferences/com.itsypin.app.plist",
    "~/Library/WebKit/com.itsypin.app",
  ]
end
