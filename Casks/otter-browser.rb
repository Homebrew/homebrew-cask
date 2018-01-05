cask 'otter-browser' do
  version '0.9.94'
  sha256 '655e7078483dbedf7d3a99ea2ba9df1eb30bfb5e5ad656a1a34fb6b6c65ec5f9'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://sourceforge.net/projects/otter-browser/rss',
          checkpoint: '0229f008fe06822195c01a46c8c29a515c1e6c01a3f9050b756390f65de6b70d'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
