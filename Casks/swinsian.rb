cask "swinsian" do
  version "2.3.1"
  sha256 "b2a365b18de692056911b6db72b411421039bd4950fec83109cc9f6732908780"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast "https://www.swinsian.com/sparkle/sparklecast.xml"
  name "Swinsian"
  homepage "https://swinsian.com/"

  auto_updates true

  app "Swinsian.app"
end
