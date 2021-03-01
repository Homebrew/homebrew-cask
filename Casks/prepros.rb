cask "prepros" do
  version "7.3.35"
  sha256 "7dc9fdd8bd584d02cc61874f120e85754751e6fe899e0dad2ec8ac8454f38721"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
