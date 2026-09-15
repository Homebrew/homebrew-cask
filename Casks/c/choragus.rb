cask "choragus" do
  version "5.0"
  sha256 "1b0b717906e7a7944c485a1794b6e13c07e261afc84060d7bb7996292931bec0"

  url "https://github.com/scottwaters/Choragus/releases/download/v#{version}/Choragus.dmg"
  name "Choragus"
  desc "Sonos controller"
  homepage "https://github.com/scottwaters/Choragus"

  livecheck do
    url "https://scottwaters.github.io/Choragus/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Choragus.app"

  uninstall quit: "com.choragus.app"

  zap trash: [
    "~/Library/Application Scripts/com.choragus.app",
    "~/Library/Containers/com.choragus.app",
  ]
end
