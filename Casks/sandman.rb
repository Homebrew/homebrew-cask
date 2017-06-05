cask 'sandman' do
  version '1.8.0'
  sha256 'faff9c1e068de8a69764a7dff8fa582b688e99855953ca88bc78a667586f5ba4'

  # github.com/alexanderepstein/Sandman was verified as official when first introduced to the cask
  url "https://github.com/alexanderepstein/Sandman/releases/download/v#{version}/Sandman-#{version}.dmg"
  appcast 'https://github.com/alexanderepstein/Sandman/releases.atom',
          checkpoint: '1412a9607110f348f3f0bac66adc917cf16046c2a48affeb392140914937c6c0'
  name 'Sandman'
  homepage 'https://alexanderepstein.github.io/Sandman/'

  app 'Sandman.app'
end
