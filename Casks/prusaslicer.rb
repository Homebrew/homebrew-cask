cask 'prusaslicer' do
  version '2.0.0,201905201652'
  sha256 '2882e0e58be97c50570f9aca931f2ea6eff206c748ce94bb42ff341dd4938c4b'

  # github.com/prusa3d/PrusaSlicer was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/PrusaSlicer/releases.atom'
  name 'PrusaSlicer'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  app 'PrusaSlicer.app'
end
