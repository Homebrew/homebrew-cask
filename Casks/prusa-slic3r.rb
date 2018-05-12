cask 'prusa-slic3r' do
  version '1.39.2,201805041531'
  sha256 '57431549e6ac7251579c67a2e2826a8ad7dd62678b4b5ce39976390be3056392'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3rPE-#{version.before_comma}.full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: 'b688d5b3b3fed485629c6c754f0a591e5ae6f2f45f1576396e5e98baa72e5146'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
