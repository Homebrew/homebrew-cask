cask "prepros" do
  version "7.4.3"
  sha256 "4d0cc8b0f99d2848bb710c91cbf5f7e489558f5d0128f67cc9282b3f325aa270"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
