cask "passenger-ide" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "b8f15ab610d118ff65214f6bac4387bb89b6ce67a0e0841eb488984e815dbcf8",
         intel: "cef760e3869048938f115fc1a0872d375f1c8adbbd0c769a4e6f9618cc77b7ec"

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
