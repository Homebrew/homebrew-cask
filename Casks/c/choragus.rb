cask "choragus" do
  version "4.10"
  sha256 "23f14cdfeebe933144ed83578d330f14ae1bbaa53478e8ab7f7f1b59d6e91c44"

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

  zap trash: [
    "~/Library/Application Scripts/com.choragus.app",
    "~/Library/Containers/com.choragus.app",
  ]
end
