cask "freedom" do
  version "2.7,1954.1"
  sha256 "96edeba95be08b2391c0727d38e6d12e2dab403b24f3ef12bd36186c23236f4e"

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
