cask "choragus" do
  version "4.14"
  sha256 "6d38def7cb55472df3486d4a2b62935fcf6251aedc3d1706bacc606c7009dfa2"

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
