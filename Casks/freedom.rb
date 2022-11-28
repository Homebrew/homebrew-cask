cask "freedom" do
  version "2.13,2098"
  sha256 "a0ee1accf4e94eb301751dd34b6ed218f3b37288dce6f5227577bc7e7a336478"

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
