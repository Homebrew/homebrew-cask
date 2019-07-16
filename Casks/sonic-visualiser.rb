cask 'sonic-visualiser' do
  version '3.3.0,2486'
  sha256 '0697f375ab8796e5ad0e14c682f9a94a61e1a6708baced55158e16b34cf9fd73'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma.major_minor}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG',
          configuration: version.major_minor
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  depends_on macos: '>= :sierra'

  app 'Sonic Visualiser.app'
end
