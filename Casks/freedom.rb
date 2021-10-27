cask "freedom" do
  version "2.6,1937.1"
  sha256 "38a37a5b329b532218cd8cc63a9b1bb88a247d4596de4357aceda0a738fdac89"

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
