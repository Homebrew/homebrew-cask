cask 'min' do
  version '1.1.1'
  sha256 '841da2609660a6fbb4c3cad70cf4170b3251cd78a708e4c1a53a5715007db61b'

  url "https://github.com/PalmerAL/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/PalmerAL/min/releases.atom',
          checkpoint: '550a199aeefd280611b3eb03afe317920f25e220bb200134d3c1766b9ee03898'
  name 'Min'
  homepage 'https://palmeral.github.io/min'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
