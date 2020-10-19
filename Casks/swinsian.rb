cask "swinsian" do
  version "2.3.0"
  sha256 "9807dc6b0e8855e18eb77e23a5af460bd137e73d26bb2e964938283918b08cd4"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast "https://www.swinsian.com/sparkle/sparklecast.xml"
  name "Swinsian"
  homepage "https://swinsian.com/"

  auto_updates true

  app "Swinsian.app"
end
