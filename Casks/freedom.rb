cask "freedom" do
  version "2.4.3,1716.1"
  sha256 "374450cc820d948a04a0e07c1ca199cfbc6c5f521d99f27eceb8697d636d3fdc"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.before_comma}/Freedom.zip"
  name "Freedom"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Freedom.app"
end
