cask "kaleidoscope3" do
  version "3.0.2"
  sha256 "ff89bee907b911678009ebdcf75423e940b11d48b0379d22a7873d562a91f500"

  url "https://updates.kaleidoscope.app/v3/prod/Kaleidoscope-#{version}-2013.app.zip"
  name "kaleidoscope3"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://www.kaleidoscope.app/"

  livecheck do
    url "https://updates.kaleidoscope.app/v#{version}/prod/appcast"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Kaleidoscope.app"
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
    "~/Library/Application Support/app.kaleidoscope.v3",
    "~/Library/Caches/app.kaleidoscope.v3",
    "~/Library/Preferences/app.kaleidoscope.v3.plist",
    "~/Library/Saved Application State/app.kaleidoscope.v3.savedState",
    "~/Library/WebKit/app.kaleidoscope.v3",
  ]
end
