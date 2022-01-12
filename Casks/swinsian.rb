cask "swinsian" do
  version "2.3.6,539"
  sha256 "750efa71b9c806cdc2c572ebb5f16a25deb83033d9a8cb4dffe347da758bd1e3"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version.csv.first}.zip"
  name "Swinsian"
  desc "Music player"
  homepage "https://swinsian.com/"

  livecheck do
    url "https://www.swinsian.com/sparkle/sparklecast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Swinsian.app"
end
