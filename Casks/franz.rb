cask 'franz' do
  version '0.9.10'
  sha256 'bac5896e5cad84d4018e9486cd580a04548c0a0b350ade506b82192175306570'

  url "https://github.com/imprecision/franz-app/releases/download/2.0/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: 'e8032c13996ef3f39bda32345034a2c8d2ba4b03be678c20126e361e9d019f47'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
