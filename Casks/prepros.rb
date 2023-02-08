cask "prepros" do
  version "7.7.0"
  sha256 "e7d7a23d70ccc1fa9c4a2fe1ae75cedda6b7215b62e08c771fa23fa4f40c8c22"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
