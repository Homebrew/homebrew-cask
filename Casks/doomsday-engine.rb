cask 'doomsday-engine' do
  version '2.0.3'
  sha256 '0a6258ed1c061b3a80f1573c7845bce39cd8c8d66ade8d3f29531b7cc658e9d5'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: '8628643798d476dbf82420b8bb6fafaa3445a95b774b83454d24fc2103a9b473'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
