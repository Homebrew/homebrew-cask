cask "passenger-ide" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "acecd7a012b1dc011be534990ec7516344a71a60c295635f18787b114d904705",
         intel: "9619ad520eb32184e4c038549b9c6ba3f6055e7c3be62d1826e411c84b1000e2"

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
