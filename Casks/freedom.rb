cask "freedom" do
  version "2.14.1"
  sha256 "e3bebf3da6a6f17af3940fdf2383b4c5ccfdce1028ff89080dbd89b463bbf0f8"

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
