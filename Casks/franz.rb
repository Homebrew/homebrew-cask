cask 'franz' do
  version '0.9.10'
  sha256 'bac5896e5cad84d4018e9486cd580a04548c0a0b350ade506b82192175306570'

  # github.com/imprecision/franz-app was verified as official when first introduced to the cask
  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: 'bfe803c6957cf9d530b954061370b590edebfc24eb3c6dd0afdce97fc1642e68'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
