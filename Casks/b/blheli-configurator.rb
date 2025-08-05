cask "blheli-configurator" do
  version "1.2.0"
  sha256 "6a2631409483b3c706c23f9da8e00f9420f86b874d6697d4b32f9d4619a0768e"

  url "https://github.com/blheli-configurator/blheli-configurator/releases/download/#{version}/BLHeli-Configurator_macOS_#{version}.dmg"
  name "BLHeli Configurator"
  homepage "https://github.com/blheli-configurator/blheli-configurator"

  app "BLHeli Configurator.app"

  caveats do
    requires_rosetta
  end
end
