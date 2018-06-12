cask 'prusa-slic3r' do
  version '1.40.0,201806121009'
  sha256 '1c5dbebddd24c2600e855028f39f29a74215e03201133a81a43b6c9bdd313f50'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3rPE-#{version.before_comma}.full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
