cask "magiccap" do
  version "2.1.2"
  sha256 "98bfe7b74f112d8887cc64befe494a92909eac26e20103923caf01a71a364944"

  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg",
      verified: "github.com/magiccap/MagicCap/"
  name "MagicCap"
  desc "Image/GIF capture suite"
  homepage "https://magiccap.me/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "MagicCap.app"

  caveats do
    requires_rosetta
  end
end
