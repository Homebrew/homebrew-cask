cask 'mtmr' do
  version '0.18.5'
  sha256 'd5bb6ff746fbd0322dd4bcf51cf1c7b1f625eff4fbbb23009822fdfb3db53d7c'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
