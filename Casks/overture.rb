cask 'overture' do
  version '2.4.6'
  sha256 'd766aea619b3185f318f22cefeba53e7f07db2bee551fc551bbff6b99fc5785a'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '78269cfc592aff4bfdf33770d5bb12c598475c6526d0cf3904afe650704d0ec0'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app 'Overture.app'
end
