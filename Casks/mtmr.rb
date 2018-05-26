cask 'mtmr' do
  version '0.16'
  sha256 '523545c994b81527041b5a611cc2a0ba339d6b94753e12850f85790189338f77'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom',
          checkpoint: '12de116f2cb92d3ddb52ac3ace8c681548e16fd39ad41f4b9f6c5d15f2f8b8d1'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap delete: '~/Library/Application Support/MTMR'
end
