cask 'otter-browser' do
  version '1.0.01'
  sha256 '31edfc668270b1472b80d4da9a7f540f67e9c972e13d86c54e9a7e034927f503'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}.zip"
  appcast 'https://sourceforge.net/projects/otter-browser/rss'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
