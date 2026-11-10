cask "itsytv" do
  version "1.7.0"
  sha256 "4beb94bd3ab9434e3c6e68dfdc82e96a484ff06ade959cc83db48491768feb9f"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "Itsytv"
  desc "Menu bar app for controlling your Apple TV"
  homepage "https://itsytv.app/"

  depends_on macos: :sonoma

  app "Itsytv.app"

  zap trash: [
    "~/Library/Preferences/app.itsytv.plist",
    "~/Library/Saved Application State/app.itsytv.savedState",
  ]
end
