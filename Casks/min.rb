cask 'min' do
  version '1.1.2'
  sha256 'fe353c6808018485eed39c0e138ab3ed443055f648d0694889713f54d0835545'

  # github.com/PalmerAL/min was verified as official when first introduced to the cask
  url "https://github.com/PalmerAL/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/PalmerAL/min/releases.atom',
          checkpoint: 'b02a6d4a9ac21cce8119a6ff6064cfd82becb17c2ce713410d9c27ccc4780555'
  name 'Min'
  homepage 'https://palmeral.github.io/min'
  license :oss

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
