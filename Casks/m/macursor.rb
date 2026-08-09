cask "macursor" do
  version "2.4.0"
  sha256 "baa8e8b415bfcde06d9aea484eb2b68c675aec6d564b7070a0fb82093bced6ae"

  url "https://github.com/writronic/MaCursor/releases/download/v#{version}/MaCursor.dmg",
      verified: "github.com/writronic/MaCursor/"
  name "MaCursor"
  desc "Modern cursor theme manager"
  homepage "https://writronic.com/macursor/"

  livecheck do
    url "https://raw.githubusercontent.com/writronic/macursor/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sequoia

  app "MaCursor.app"

  zap trash: [
    "~/Library/Application Support/MaCursor",
    "~/Library/Preferences/ByHost/com.writronic.MaCursor.8D8309DE-6551-562D-9E95-7D5592D87F1C.plist",
    "~/Library/Preferences/com.writronic.macursor.plist",
  ]
end
