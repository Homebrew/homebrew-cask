cask "dialpad" do
  version "18.81.9"
  sha256 :no_check

  url "https://storage.googleapis.com/dialpad_native/osx/Dialpad.dmg",
      verified: "storage.googleapis.com/dialpad_native/osx/"
  name "Dialpad"
  homepage "https://dialpad.com/download"

  app "Dialpad.app"
end
