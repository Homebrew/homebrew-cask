cask 'loaf' do
  version '1.0.3'
  sha256 'fe8967b30889d96de1eef3927bee732530b4da821b0e4f8e94c57ab5dcd8a5dc'

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
  appcast 'https://github.com/philipardeljan/getmotion/releases.atom'
  name 'Loaf'
  homepage 'https://www.getmotion.io/'

  app 'Loaf.app'

  zap trash: [
               '~/Library/Application Support/Motion (beta)',
               '~/Library/Preferences/com.motionicons.studio.plist',
             ]
end
