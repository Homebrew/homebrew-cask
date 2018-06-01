cask 'mtmr' do
  version '0.16.1'
  sha256 'f26f8ed80d0f72c65e7693c62180bd001e7ce8d9754518da7124ea0bff4a4b03'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom',
          checkpoint: '66087c1c9651a8f9759deb759646ad6010cb719522389f16dc07d34d6330d249'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap delete: '~/Library/Application Support/MTMR'
end
