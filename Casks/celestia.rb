cask "celestia" do
  version "1.6.2"
  sha256 "d12778ecdf9036a8ca22b257d9f8574bf507cc8c886cb3808f4edca32f2d5b6e"

  url "https://github.com/CelestiaProject/Celestia/releases/download/#{version}/celestia-#{version}-macOS.zip",
      verified: "github.com/CelestiaProject/Celestia"
  name "Celestia"
  desc "Space simulation for exploring the universe in three dimensions"
  homepage "https://celestia.space/"

  app "Celestia.app"

  zap trash: [
    "~/Library/Application Scripts/space.celestia.Celestia",
    "~/Library/Containers/space.celestia.Celestia",
  ]
end
