cask 'manuskript' do
  version '0.7.0'
  sha256 '1499491486e0a8c6d74c2ccc5d81bc46ef1f17f729a43ed84ac9a2d70db204cd'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
