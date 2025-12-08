cask "riverside-studio" do
  version "1.17.2"
  sha256 :no_check

  url "https://assets.riverside.fm/mac-desktop-app/current-release/RiversideStudio.dmg"
  name "Riverside Studio"
  desc "Podcast and video recorder"
  homepage "https://riverside.fm/"

  livecheck do
    url "https://assets.riverside.fm/mac-desktop-app/current-release/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Riverside Studio.app"

  zap trash: [
    "~/Library/Application Scripts/RVS-Riverside.fm-Mac",
    "~/Library/Containers/RVS-Riverside.fm-Mac",
  ]
end
