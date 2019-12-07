cask 'barrier' do
  version '2.3.2'
  sha256 'b5ebc59c4152f827a0551f265c026d3d78d7bc0d2d8ad1bd9ad0961d1815a2d0'

  url "https://github.com/debauchee/barrier/releases/download/v#{version}/Barrier-#{version}-Release.dmg"
  appcast 'https://github.com/debauchee/barrier/releases.atom'
  name 'Barrier'
  homepage 'https://github.com/debauchee/barrier/'

  depends_on macos: '>= :sierra'

  app 'Barrier.app'

  zap trash: [
               '~/Library/Application Support/barrier',
               '~/Library/Saved Application State/barrier.savedState',
             ]
end
