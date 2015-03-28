cask :v1 => 'popcorntime' do
  version :latest
  sha256 :no_check

  url 'http://popcorn-time.se/PopcornTime-latest.dmg'
  name 'Popcorn Time'
  homepage 'http://popcorn-time.se'
  license :gpl

  app 'PopcornTime.app'

  depends_on :macos => '>= :lion'

  zap :delete => [
                   '~/Library/Caches/PopcornTime',
                   '~/Library/Application Support/PopcornTime',
                   '~/Library/Saved Application State/se.popcorn-time.PopcornTime.savedState'
                 ]
end
