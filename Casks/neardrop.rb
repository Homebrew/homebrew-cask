cask "neardrop" do
  version "1.1.1"
  sha256 "af03242ab504a48cfa310ba1ad5b6f98c9501d3a48acea5c9bf7ba62ac7257e1"

  url "https://github.com/grishka/NearDrop/releases/download/v#{version}/NearDrop.app.zip"
  name "neardrop"
  desc "Unofficial Google Nearby Share app"
  homepage "https://github.com/grishka/NearDrop"

  depends_on macos: ">= :mojave"

  app "NearDrop.app"
end
