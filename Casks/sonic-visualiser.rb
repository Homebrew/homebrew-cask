cask 'sonic-visualiser' do
  version '4.0,2559'
  sha256 '2dfdd06a1a730f46941a01864a8595f6db3c6f2f19b796263c54695c499a6f29'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma.major_minor}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG',
          configuration: version.major_minor
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  depends_on macos: '>= :sierra'

  app 'Sonic Visualiser.app'
end
