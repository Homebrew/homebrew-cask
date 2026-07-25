cask "choragus" do
  version "4.13"
  sha256 "d47ea26618c6fff94ab6f69359edcd1ea165afdc0576a5757c4b5f0232ecfce5"

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
