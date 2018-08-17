cask 'gifbar' do
  version '1.0.0'
  sha256 '5482a08d902d8f6acd85a81b651c9b6ce5f3dc2d56d808bda37e4c767e7b9180'

  url "https://github.com/joshghent/gifbar/releases/download/v#{version}/GifBar.zip"
  appcast 'https://github.com/joshghent/gifbar/releases.atom'
  name 'GifBar'
  homepage 'https://github.com/joshghent/gifbar'

  app 'GifBar.app'
end
