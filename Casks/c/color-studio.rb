cask "color-studio" do
  version "1.0.4"
  sha256 "95cb57fc7fdc8f5d0d3f7016e1b07b536295dc67ee3a7f674a84634e80e4ad63"

  url "https://github.com/bernaferrari/color-studio/releases/download/#{version}/ColorStudio.zip"
  name "Color Studio"
  desc "Coherent colour scheme creator"
  homepage "https://github.com/bernaferrari/color-studio"

  app "Color Studio/Color Studio.app"

  zap trash: [
    "~/Library/Application Scripts/com.bernaferrari.colorstudio",
    "~/Library/Containers/com.bernaferrari.colorstudio",
  ]

  caveats do
    requires_rosetta
  end
end
