cask "front" do
  version "3.25.3"
  sha256 "7fb01f8ce1ada40928cf79ffdeb2cdafaeac450c2f1600a8643d4d9c573fcc0d"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
  name "Front"
  homepage "https://frontapp.com/"

  app "Front.app"
end
