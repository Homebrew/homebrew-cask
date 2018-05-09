cask 'mtmr' do
  version '0.14'
  sha256 '558a2a68f6c258120efd9ab34f3b9c70e4f869ed59d32c49b2bfd57b06537503'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR-#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom',
          checkpoint: '56a4be29f5be421c9f5d9098b2a536faa78f3dd5c2785c0c983331f521408a10'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap delete: '~/Library/Application Support/MTMR'
end
