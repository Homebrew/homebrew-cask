cask "prepros" do
  version "7.3.31"
  sha256 "ee627481d1d2b6949df39c24f40a409ca090322539b41792c5d168e9a8598016"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
