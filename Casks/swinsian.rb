cask "swinsian" do
  version "2.3.4,529"
  sha256 "35e055676481ea67037e67abb5812424fb523d63af4f12d9aeb7e6b52b1c43aa"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version.before_comma}.zip"
  name "Swinsian"
  homepage "https://swinsian.com/"

  livecheck do
    url "https://www.swinsian.com/sparkle/sparklecast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Swinsian.app"
end
