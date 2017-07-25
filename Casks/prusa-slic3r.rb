cask 'prusa-slic3r' do
  version '1.36.0,201707170748'
  sha256 '52d3ccf5b398e9376b305728fdcc7c09f493c7e596103f2e25d20ea5bed3c761'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3r-#{version.before_comma}-prusa3d-full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: '4c7e3e797882391a61a0f3b229676a9c0bdeb5a8ee4e658fdc9ca0eb896bb8d1'
  name 'Slic3r - Prusa Edition'
  homepage 'http://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
