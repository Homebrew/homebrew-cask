cask "brewtarget" do
  version "3.0.11"
  sha256 "d8d7ae1583810bc05b8f9cb43c0d6c73e366a1467f9c6a1e9b206c864b12d36a"

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

  caveats do
    requires_rosetta
  end
end
