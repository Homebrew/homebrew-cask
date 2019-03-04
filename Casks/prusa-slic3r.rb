cask 'prusa-slic3r' do
  version '1.42.0-alpha7,201903011807'
  sha256 '2e786059c796067150ee7a4922e9b844a2ae9d89c74ce8714afefdef0c7e75e3'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3rPE-#{version.before_comma}+full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
