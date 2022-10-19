cask "dialpad" do
  version "21.3.0"
  sha256 :no_check

  url "https://storage.googleapis.com/dialpad_native/osx/Dialpad.dmg",
      verified: "storage.googleapis.com/dialpad_native/osx/"
  name "Dialpad"
  desc "Cloud communication platform"
  homepage "https://dialpad.com/download"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Dialpad.app"
end
