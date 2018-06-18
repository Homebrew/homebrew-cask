cask 'otter-browser' do
  version '0.9.99-rc9'
  sha256 '7d8eef3aaeda912aa9e7c2a0d2082a945ba6ec01da6d09006cc8cf0cd9815129'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://github.com/OtterBrowser/otter-browser/releases.atom'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
