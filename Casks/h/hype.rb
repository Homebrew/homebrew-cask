cask "hype" do
  version "4.1.17,762"
  sha256 "76ee58a5a7e11a44f86240010ce0f78c76419ed62db73a2e7ad3802278c96677"

  url "https://tumult.com/hype/download/Hype-#{version.csv.second}.dmg"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  livecheck do
    url "https://tumult.com/hype/appcast_hype#{version.major}.xml"
    strategy :sparkle
  end

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.tumult.Hype#{version.major}",
    "~/Library/Preferences/com.tumult.Hype#{version.major}.plist",
  ]
end
