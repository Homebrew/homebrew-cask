cask "front" do
  version "3.27.3"
  sha256 "3b951e7682b257c1021497385ab07910058bb25b3823853fa30125d752d0d6a5"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  name "Front"
  desc "Customer communication platform"
  homepage "https://frontapp.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Front.app"
end
