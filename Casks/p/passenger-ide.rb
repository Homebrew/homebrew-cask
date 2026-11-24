cask "passenger-ide" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "6fe646476804d0e6fb01c1d025898d6964e3fc858c4ab487484320cfd16fe1c7",
         intel: "107ffc8c797ec8f180a3c5aa8ac4fa077c0e33002a6d3a5aeee61ff719ea35a0"

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
