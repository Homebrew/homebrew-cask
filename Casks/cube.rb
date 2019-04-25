cask 'cube' do
  version '4.4'
  sha256 '20698456ed2c19bf0bfb5a9e4ea74a761248e86a741c15d6f525ec8c5e20897c'

  # apps.fz-juelich.de/scalasca/releases/cube was verified as official when first introduced to the cask
  url "https://apps.fz-juelich.de/scalasca/releases/cube/#{version}/dist/Cube-Compressed.dmg"
  appcast "https://scalasca.org/software/cube-#{version.major}.x/download.html"
  name 'Scalasca Cube GUI'
  homepage "https://scalasca.org/software/cube-#{version.major}.x/download.html"

  app 'Cube.app'
end
