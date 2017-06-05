cask 'sandman' do
  version '1.8.0'
  sha256 'faff9c1e068de8a69764a7dff8fa582b688e99855953ca88bc78a667586f5ba4'

  # github.com/alexanderepstein/Sandman was verified as official when first introduced to the cask
  url "https://github.com/alexanderepstein/Sandman/releases/download/v#{version}/Sandman-#{version}.dmg"
  name 'Sandman'
  homepage 'https://alexanderepstein.github.io/Sandman/'

  app 'Sandman.app'
end
