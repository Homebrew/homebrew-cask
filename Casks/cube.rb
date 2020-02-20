cask 'cube' do
  version '4.4'
  sha256 'abd7253855ce045a8354f4b829f3f22707cc336c29b8feebc1542a986d3ce020'

  # apps.fz-juelich.de/scalasca/releases/cube was verified as official when first introduced to the cask
  url "https://apps.fz-juelich.de/scalasca/releases/cube/#{version}/dist/Cube-Compressed.dmg"
  appcast "https://scalasca.org/software/cube-#{version.major}.x/download.html"
  name 'Scalasca Cube GUI'
  homepage "https://scalasca.org/software/cube-#{version.major}.x/download.html"

  app 'Cube.app'
end
