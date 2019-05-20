cask 'prusaslicer' do
  version '2.0.0-rc2,201905190649'
  sha256 '9b6d8d42c6ea63a19682b0aa4cfd214d1fce9be2a5b093d0c94707e3a5f52987'

  # github.com/prusa3d/PrusaSlicer was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/PrusaSlicer/releases.atom'
  name 'PrusaSlicer'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  app 'PrusaSlicer.app'
end
