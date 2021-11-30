cask "mockoon" do
  version "1.17.0"
  sha256 "4c639e3e3d2c5e7239c79e46b3c5b4fab3f685e612ac64535fe719101f64c85e"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Easily create mock APIs locally."
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
  
  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState"
  ]
end
