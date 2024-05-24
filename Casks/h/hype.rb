cask "hype" do
  version "4.1.18,768"
  sha256 "586aa670d4404e5d2888256da90257d892b3200751d50667dd47fc7d05c2eae4"

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
