cask 'etcher' do
  version '1.1.2'
  sha256 'b562c7ff89e0de86003ee1cc14a1ee08ab5988a543b6e22235fe3773a48074a4'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: 'd30055c539e29585db3819fdfcb3a0ebdb5671c45a886e4d455f2d226ecefdd6'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'

  zap trash: [
               '~/Library/Application Support/etcher',
               '~/Library/Preferences/io.resin.etcher.helper.plist',
               '~/Library/Preferences/io.resin.etcher.plist',
               '~/Library/Saved Application State/io.resin.etcher.savedState',
             ]
end
