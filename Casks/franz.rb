cask 'franz' do
  version '0.9.10'
  sha256 'bac5896e5cad84d4018e9486cd580a04548c0a0b350ade506b82192175306570'

  # bit.ly/22yh2b6 was verified as official when first introduced to the cask
  url 'https://github.com/imprecision/franz-app/releases/download/0.9.10/Franz-darwin-x64-0.9.10.dmg'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
