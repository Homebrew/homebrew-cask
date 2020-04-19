cask 'alloy' do
  version '5.1.0'
  sha256 '177140c1e36a1429b91265b7e7e56d694cbf9bd991db40f8b3d92af1d9b8b837'

  url 'https://github.com/AlloyTools/org.alloytools.alloy/releases/download/v5.1.0/alloy.dmg'
  appcast 'https://github.com/AlloyTools/org.alloytools.alloy/releases.atom'
  name 'Alloy'
  # alloytools.org was verified as official when first introduced to the cask
  homepage 'https://alloytools.org/'

  app 'Alloy.app'
end
