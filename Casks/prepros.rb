cask "prepros" do
  version "7.3.30"
  sha256 "bc5f2f9386566e56b50350750d30a07267afc37a2189fc3ff2a1207f626fc473"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
