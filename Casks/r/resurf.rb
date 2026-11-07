cask "resurf" do
  version "2.14.0,140"
  sha256 "3920c00b9b6d8ae1591149d32ad1509141c94195838409f6820442f53583f485"

  url "https://resurf-native.s3.us-east-1.amazonaws.com/downloads/Resurf-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Resurf"
  desc "Personal library for notes, links, images, and files"
  homepage "https://resurf.so/"

  livecheck do
    url "https://resurf-native.s3.us-east-1.amazonaws.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Resurf.app"
  binary "#{appdir}/Resurf.app/Contents/Helpers/resurf"

  zap trash: [
    "~/Library/Caches/so.resurf.app.mac",
    "~/Library/Preferences/so.resurf.app.mac.plist",
    "~/Library/Saved Application State/so.resurf.app.mac.savedState",
  ]
end
