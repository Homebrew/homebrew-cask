cask 'prusa-slic3r' do
  version '1.41.1,201810261144'
  sha256 'a3246a2f1e2cf37b7ae361bb5ae4c95a24f62fe1795e99946281b2d3b3afb9fc'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3rPE-#{version.before_comma}+full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
