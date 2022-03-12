cask "hype" do
  version "4.1.7,736"
  sha256 "d8c095e6a45ad0231b9a5aaa23c6ff042e477f09ca8d1c6b7734f59a499b5755"

  url "https://tumult.com/hype/download/Hype-#{version.csv.second}.dmg"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  livecheck do
    url "https://tumult.com/hype/appcast_hype#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.tumult.Hype#{version.major}",
    "~/Library/Preferences/com.tumult.Hype#{version.major}.plist",
  ]
end
