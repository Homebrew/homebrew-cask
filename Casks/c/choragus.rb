cask "choragus" do
  version "4.12"
  sha256 "e6ab362e7d7c655715ce0bd5dd79bd52a043819a1afb87cc9244e4fcdeee4c6a"

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
