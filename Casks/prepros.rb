cask "prepros" do
  version "7.6.0"
  sha256 "bc11e9b6127e487dc9b33b583e74565dab18c569c4ae627df28f78ad8da75355"

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
