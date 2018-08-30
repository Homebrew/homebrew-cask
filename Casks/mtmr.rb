cask 'mtmr' do
  version '0.18'
  sha256 'b7f1fbad3a85884e4188160ca0fe8a0a513f9bf188139f2aac9c0811b78c2a7b'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
