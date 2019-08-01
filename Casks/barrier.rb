cask 'barrier' do
  version '2.3.0'
  sha256 'c00706fd2c38c1f0dda0b298f55d2fc0d423dcb15187041c379273da1e347714'

  url "https://github.com/debauchee/barrier/releases/download/v#{version}/Barrier-#{version}-Release.dmg"
  appcast 'https://github.com/debauchee/barrier/releases.atom'
  name 'Barrier'
  homepage 'https://github.com/debauchee/barrier/'

  app 'Barrier.app'
end
