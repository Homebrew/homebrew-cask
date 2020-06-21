cask 'sonic-visualiser' do
  version '4.1,2719'
  sha256 '31d0fe9bb3403de07136411bb7f82c1ebd6cc6fab04bc2756048226e5ca20500'

  # code.soundsoftware.ac.uk/ was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  depends_on macos: '>= :sierra'

  app 'Sonic Visualiser.app'

  zap trash: [
               '~/Library/Saved Application State/org.sonicvisualiser.SonicVisualiser.savedState',
               '~/Library/Preferences/org.sonicvisualiser.Sonic Visualiser.plist',
               '~/Library/Preferences/org.sonicvisualiser.SonicVisualiser.plist',
               '~/Library/Application Support/sonic-visualiser/',
             ]
end
