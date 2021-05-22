cask "prepros" do
  version "7.3.41"
  sha256 "6186afc68d32b2744bb740b21e9c1234ff5b6ae751ccd35ca081027013e6f1b7"

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
