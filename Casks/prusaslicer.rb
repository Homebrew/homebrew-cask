cask 'prusaslicer' do
  version '2.0.0-rc,201905141706'
  sha256 '9ef6ab16bff3c60bfe0d27b34b13d14b9710e4e4148c917d32d679b6fb5f0542'

  # github.com/prusa3d/PrusaSlicer was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/PrusaSlicer/releases.atom'
  name 'PrusaSlicer'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  app 'PrusaSlicer.app'
end
