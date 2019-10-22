cask 'manuskript' do
  version '0.9.0'
  sha256 'aef7bfa96524d2905a983722bb80ad8f1e057b8cf4c3a0aac03bdd22894c7ef8'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version.major_minor_patch}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom'
  name 'Manuskript'
  homepage 'https://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
