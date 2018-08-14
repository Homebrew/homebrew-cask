cask 'manuskript' do
  version '0.6.0'
  sha256 '1a1e1ef9d6efdce309097adf5eb7f481c654d342e8ab2bd6f451977bf184e9fb'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
