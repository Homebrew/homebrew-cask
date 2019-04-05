cask 'manuskript' do
  version '0.8.0'
  sha256 'cd48f796945188c89e34b6e789bfcad7753a55ccd99a64fc5f0c92aaaebba0a9'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version.major_minor_patch}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
