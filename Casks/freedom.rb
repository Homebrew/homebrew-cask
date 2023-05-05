cask "freedom" do
  version "2.15.1"
  sha256 "1611fede73e49b4f2ca523d3f57a4444f5d9baab8d6582cecf7bf3bf86718d72"

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
