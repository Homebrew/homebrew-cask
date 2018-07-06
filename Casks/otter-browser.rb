cask 'otter-browser' do
  version '0.9.99-weekly233'
  sha256 'cf9b99d5cd729f868292b1941a2bff81e9e64186655ea0c5cc6ed9644632aa37'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://sourceforge.net/projects/otter-browser/rss'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
