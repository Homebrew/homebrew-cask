cask "hype" do
  version "4.1.22,786"
  sha256 "23023187c7ed7b0ca2f70eb7f6e38b5d319396815880132b859acb7e1bbbbb0c"

  url "https://tumult.com/hype/download/Hype-#{version.csv.second}.dmg"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  livecheck do
    url "https://tumult.com/hype/appcast_hype#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"

  uninstall quit: "com.tumult.Hype#{version.major}"

  zap trash: [
    "~/Library/Containers/com.tumult.Hype#{version.major}",
    "~/Library/Preferences/com.tumult.Hype#{version.major}.plist",
  ]
end
