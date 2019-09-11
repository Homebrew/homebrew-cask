cask 'barrier' do
  version '2.3.1'
  sha256 'e8238c109293c8a33fed8604725bd5c0275c24adbc223d1f4c01663cd2d9b45f'

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
