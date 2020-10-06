cask "freedom" do
  version "2.4.2"
  sha256 "faf76534b3042100578389c3f7dc178ff80a3d691eaed070e380f6fe5208152d"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
  name "Freedom"
  homepage "https://freedom.to/"

  auto_updates true

  app "Freedom.app"
end
