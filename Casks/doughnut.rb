cask "doughnut" do
  version "2.0.0"
  sha256 "1cad1dfb5b5227bbed0eadfe2cac3b824c14f3a32dda3b6cd9eb6a4a36922c10"

  url "https://github.com/dyerc/Doughnut/releases/download/v#{version}/Doughnut-#{version}.dmg"
  name "Doughnut"
  desc "Podcast client"
  homepage "https://github.com/dyerc/Doughnut/"

  app "Doughnut.app"

  zap trash: [
    "~/Library/Preferences/com.cdyer.doughnut.plist",
    "~/Music/Doughnut",
  ]
end
