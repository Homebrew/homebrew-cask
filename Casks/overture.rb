cask 'overture' do
  version '2.5.6'
  sha256 '3e4b992fc52b5e0aee5e5cddb2c6d562b51161bd8f49e2c082e4f3e261f76971'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: 'af3f9817a721c2ad81fd5d776dd891c5cda37e5b7b96a886213e7b068cca1161'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app "Overture-#{version}-macosx.cocoa.x86_64/Overture.app"
end
