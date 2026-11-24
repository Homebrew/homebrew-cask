cask "passenger-ide" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "ff3193cdbca8c1d7cc70ff8b70a8dc4189f4fe0fe1dfb54238967027a1f42648",
         intel: "f6a9b0517292f269d722a21ae04f6d3a0ebda6b62bb0b7981a0b602882f4bed9"

  url "https://github.com/Zaneris/passenger/releases/download/v#{version}/Passenger-macos-#{arch}.dmg"
  name "Passenger"
  desc "IDE for C# and .NET"
  homepage "https://passenger-ide.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Passenger.app"
  binary "#{appdir}/Passenger.app/Contents/Resources/bin/passenger-ide"

  zap trash: [
    "~/Library/Application Support/Passenger",
    "~/Library/Preferences/io.github.zaneris.passenger.plist",
  ]
end
