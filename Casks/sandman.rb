cask 'sandman' do
  version '1.9.0'
  sha256 '9bace208828104ed29b316840367d36ad3e3f46907f82f926bdf4ca7cc430510'

  # github.com/alexanderepstein/Sandman was verified as official when first introduced to the cask
  url "https://github.com/alexanderepstein/Sandman/releases/download/v#{version}/Sandman-#{version}.dmg"
  appcast 'https://github.com/alexanderepstein/Sandman/releases.atom',
          checkpoint: 'e3052f934bc608a3aba20102454a566b1642d4cd17ec63ca0912edc0b0c280d3'
  name 'Sandman'
  homepage 'https://alexanderepstein.github.io/Sandman/'

  app 'Sandman.app'
end
