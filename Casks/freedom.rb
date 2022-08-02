cask "freedom" do
  version "2.10,2011.1"
  sha256 "7105c3a1b34948f276395ec1cbd57032ffc80a3b83d78de4ede30751fd512684"

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
