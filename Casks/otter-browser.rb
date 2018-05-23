cask 'otter-browser' do
  version '0.9.98-rc8'
  sha256 '82315c5351a381c45f3408fac9ed0563cd34a62660a052359ecad20cc19e1658'

  # sourceforge.net/otter-browser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast 'https://sourceforge.net/projects/otter-browser/rss',
          checkpoint: '9fab938e579ef9bb07a7e4d46444aabbc7829fb070e73b2e26b88d8b7fd5e4ca'
  name 'Otter Browser'
  homepage 'https://otter-browser.org/'

  app 'Otter Browser.app'
end
