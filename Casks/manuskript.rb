cask 'manuskript' do
  version '0.7.0-3'
  sha256 'f82046d9b41eb4604edd1cf9d3b816a3c54b54f9ac749ddafc9ddefe3714232a'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version.major_minor_patch}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
