cask "swavan" do
  version "0.0.2"
  sha256 "6c5acc7e280c6857f62fcf82982b8125bfd8f04df78440c4ccd9fe3d6d206689"

  url "https://github.com/swavan/oneui/releases/download/v#{version}/SwaVanOneUI-#{version}.dmg", verified: "github.com/swavan/oneui"
  name "SwaVan"
  desc "Mocking tool"
  homepage "https://swavan.io/"

  auto_updates true

  app "SwaVan.app"
end
