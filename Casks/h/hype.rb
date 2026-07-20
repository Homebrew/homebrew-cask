cask "hype" do
  version "4.1.21,780"
  sha256 "06ebcae431416dabfcd10bdc7a8906f6c96a3ab6b2d43eae212fab79eaec6a5e"

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

  zap trash: [
    "~/Library/Containers/com.tumult.Hype#{version.major}",
    "~/Library/Preferences/com.tumult.Hype#{version.major}.plist",
  ]
end
