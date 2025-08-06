cask "rodeo" do
  version "2.5.2"
  sha256 "9e96d1966cc2a5159c4079312e30c1c20ad834fa766bc92dac938fb944c79d0d"

  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  name "Rodeo"
  desc "Data science IDE for Python"
  homepage "https://github.com/yhat/rodeo"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "Rodeo.app"

  caveats do
    requires_rosetta
  end
end
