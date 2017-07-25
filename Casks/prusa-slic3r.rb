cask 'prusa-slic3r' do
  version '1.36.1,201707251232'
  sha256 '52d3ccf5b398e9376b305728fdcc7c09f493c7e596103f2e25d20ea5bed3c761'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3r-#{version.before_comma}-prusa3d-full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: '13fb6d5c7b1c2eb1c2b5b4758b84bc21c487de079188024f8b2b12faff46f801'
  name 'Slic3r - Prusa Edition'
  homepage 'http://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
