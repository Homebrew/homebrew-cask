cask 'overture' do
  version '2.6.0'
  sha256 '9ecdaa3aee858459c9383c9277c82d7f2d28b1a6fba989d49c18223909f77ef6'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '60e51d8d7b605de42480aba89cd6dadaa3e514fd90b27aabf8d9715cabfabd03'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app "Overture-#{version}-macosx.cocoa.x86_64/Overture.app"
end
