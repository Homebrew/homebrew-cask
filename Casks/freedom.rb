cask "freedom" do
  version "2.9,1991.1"
  sha256 "c9720bef340512ad41651980898db310286efe2aaaedec2c1d0c01d359799a20"

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
