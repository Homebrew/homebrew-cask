cask "iconizer" do
  version "2020.11.0"
  sha256 "abaffdea473f4d3cd7d763fcb3846fbb752b87949e6ef7d273a95b6f5c5c1e06"

  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg",
      verified: "github.com/raphaelhanneken/iconizer/"
  name "Iconizer"
  desc "Xcode asset catalog creator"
  homepage "https://raphaelhanneken.com/iconizer/"

  auto_updates true

  app "Iconizer.app"

  zap trash: "~/Library/Preferences/com.raphaelhanneken.iconizer.plist"
end
