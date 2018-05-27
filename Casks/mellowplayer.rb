cask 'mellowplayer' do
  version '3.3.5'
  sha256 '22c003f5f233ee24f9a8044dffe3959a71c45c1a935bc94e3d4cbc3edf3636b5'

  # github.com/ColinDuquesnoy/MellowPlayer was verified as official when first introduced to the cask
  url "https://github.com/ColinDuquesnoy/MellowPlayer/releases/download/#{version}/MellowPlayer.dmg"
  appcast 'https://github.com/ColinDuquesnoy/MellowPlayer/releases.atom',
          checkpoint: 'a6e76be5d54d9563261991e6854199a5d5806931dc24e24f0c5e4aa943a01560'
  name 'MellowPlayer'
  homepage 'https://colinduquesnoy.github.io/MellowPlayer/'

  app 'MellowPlayer.app'

  zap trash: [
               '~/Library/Application Support/MellowPlayer',
               '~/Library/Caches/MellowPlayer',
               '~/Library/Preferences/com.mellowplayer.3.plist',
               '~/Library/Preferences/com.mellowplayer.mellowplayer.MellowPlayer.plist',
             ]
end
