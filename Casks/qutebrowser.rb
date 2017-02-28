cask 'qutebrowser' do
  version '0.10.0'
  sha256 'ba0202df8af6905d5b823bafdc04415853f897c06cdbbb6e40af9ed5e602c1d2'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: 'ee0a69fe4e86f27d0d7127cd7492c01f98ad1120d9fa0bdaa1791937199aba41'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
