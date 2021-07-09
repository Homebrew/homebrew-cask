cask "swinsian" do
  version "2.3.5,535"
  sha256 "3210c8c897ef4f81f8c6059f720bf70a1b046d6505a7a8bc140bb104184f23f0"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version.before_comma}.zip"
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
