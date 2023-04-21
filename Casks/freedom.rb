cask "freedom" do
  version "2.13.2"
  sha256 "e3402f092cf0c95b5b3fd957042f54a1bb85c51c9947d7d5c464956ed74830bc"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Freedom.app"
end
