cask "boringnotch" do
  version "2.6,wolf.painting"
  sha256 "1a58ec27e5de30faf107fdf8b77575b1c39ace69e77b1330fc4ed6562bf2badc"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/#{version.csv.second}/#{version.csv.second.no_dots}.dmg"
  name "TheBoringNotch"
  desc "Handy utility to manage and customize the notch area"
  homepage "https://theboring.name/"

  livecheck do
    url "https://TheBoredTeam.github.io/boring.notch/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch",
    "~/Library/Containers/theboringteam.boringnotch",
  ]
end
