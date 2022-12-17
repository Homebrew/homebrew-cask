cask "freedom" do
  version "2.13.2,2106"
  sha256 "41a4be4cc0d9ff765ab4ab9d39908187ae889fb323c4aa273a365bf84e76bede"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.csv.first}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Freedom.app"
end
