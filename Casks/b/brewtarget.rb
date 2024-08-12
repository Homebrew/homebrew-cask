cask "brewtarget" do
  version "4.0.1"
  sha256 "b5fd6314b4867cd1c5cca16c77ef0aadbbea04070122c19ff1afd13383ffe10b"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"

  zap trash: [
    "~/Library/Preferences/brewtarget",
    "~/Library/Preferences/com.brewtarget.Brewtarget.plist",
    "~/Library/Saved Application State/com.brewtarget.Brewtarget.savedState",
  ]
end
