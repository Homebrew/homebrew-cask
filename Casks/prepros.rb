cask "prepros" do
  version "7.3.34"
  sha256 "097c6f17c929fa24e749a98ddd614483f88c4febaf20ad204e69be56c6f935a4"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
