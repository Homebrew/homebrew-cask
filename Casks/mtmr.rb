cask 'mtmr' do
  version '0.13.1'
  sha256 'e07f3c63e2b7fd1a254efe6fbccf8c7a3520e2d56622f7b30bbd2bbe4a17c9b1'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR-#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom',
          checkpoint: '0c4e9767c884935ab3675c200ef121cdb5d0872e7794d41ba5256dd30fbeb3a2'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap delete: '~/Library/Application Support/MTMR'
end
