cask "freedom" do
  version "2.5.8,1915.1"
  sha256 "b734bea4cb836556c532804c9a6db2ef80f51155a03d568cb209275b479003e5"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.before_comma}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Freedom.app"
end
