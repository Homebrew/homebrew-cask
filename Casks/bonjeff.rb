cask 'bonjeff' do
  version '1.0.0'
  sha256 '7d0a8631a1ff2d6dac635bfe222f08d27d0ef21ab7d1ea143c2d84940398704f'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom',
          checkpoint: 'f2a1fd88272bcff67512db40c5bb637ed688e3ffaa706b7aa8f9ab7db93109c7'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap delete: '~/Library/Application Scripts/com.lapcatsoftware.bonjeff'
end
