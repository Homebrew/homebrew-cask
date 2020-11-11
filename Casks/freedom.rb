cask "freedom" do
  version "2.4.3"
  sha256 "374450cc820d948a04a0e07c1ca199cfbc6c5f521d99f27eceb8697d636d3fdc"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
  name "Freedom"
  homepage "https://freedom.to/"

  auto_updates true

  app "Freedom.app"
end
