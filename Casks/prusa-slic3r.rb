cask 'prusa-slic3r' do
  version '1.41.0,201809010756'
  sha256 '93ea481dd849d0c2ece2cc1d1df0631354c52a6ed5491b267ea524db664e1344'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3rPE-#{version.before_comma}+full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
