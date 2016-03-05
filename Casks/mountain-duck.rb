cask 'mountain-duck' do
  version '1.2.1.3601'
  sha256 '39d428941e12fcd1df164bb64918cc6542bf9f28fe1733883116f6dbd7211cfc'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '1d858c4523802106687594d9ed34fcb9e4270a948e8739981242ae195353bd9a'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
