cask "opera" do
  version "73.0.3856.329"
  sha256 "9c56644ea979ced484638a7e6f6d6f3201b82fbfdc8aefba001a912ed24b2a41"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera/desktop/"
  name "Opera"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/"

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Application Support/com.operasoftware.Opera/",
  ]
end
