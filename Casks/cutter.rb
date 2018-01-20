cask 'cutter' do
  version '1.1'
  sha256 '0cf7d17b6edfff88967ac1979effdbba506dc80ef319d25114081a19118bbde1'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '8d37bfefc10e9e0f1861dee8a029cd4ae2d5f2afecaeabae9e62c6dc0021a600'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'

  zap trash: [
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
