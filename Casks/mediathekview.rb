cask 'mediathekview' do
  version '12'
  sha256 'c0671283d2719028815adeb5380ad8d0991ea50f680b6a041b2852d542412c5e'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss?path=/Mediathek',
          checkpoint: 'cc32cbb6d7db3f56cf4c4739c54a7442677a748f93548217cbc9de439b7be25a'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'

  app 'MediathekView.app'
end
