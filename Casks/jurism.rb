cask 'jurism' do
  version '4.0.29.12m98'
  sha256 'ee2dcc5280c09860bdd0c76e0b47014b91e4214e983382f63c313de674e6a001'

  # github.com/Juris-M/zotero was verified as official when first introduced to the cask
  url "https://github.com/Juris-M/zotero-standalone-build/releases/download/v#{version}/jurism-for-mac-all-#{version}.dmg"
  appcast 'https://github.com/Juris-M/zotero-standalone-build/releases.atom',
          checkpoint: '3b097867939cbdcfa9464576cdc8b2c3a0a37b7ba1a413a50a3a23e44b5b125d'
  name 'Juris-M'
  homepage 'https://juris-m.github.io/'

  app 'Jurism.app'
end
