cask 'otter-browser' do
  version '0.9.99-rc9'
  sha256 '7d8eef3aaeda912aa9e7c2a0d2082a945ba6ec01da6d09006cc8cf0cd9815129'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://sourceforge.net/projects/otter-browser/rss',
          checkpoint: '0ed19ecff41555a531ab84ad28c6958fda336de625a4c2a0e9cc2686a7c8d8c5'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
