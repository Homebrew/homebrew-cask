cask "freedom" do
  version "2.11,2027"
  sha256 "36e1da36a9744366e44acd08481362ec8d9b613325552dcd1f5d468dc7d93cf3"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.csv.first}/Freedom.zip"
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
