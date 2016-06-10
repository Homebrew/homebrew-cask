cask 'overture' do
  version '2.3.6'
  sha256 '623355be84033257f3434d2f85a2a632f28f4adbeee4a897b92be53e147846a4'

  url 'https://github.com/overturetool/overture/releases/download/Release%2F2.3.6/Overture-2.3.6-macosx.cocoa.x86_64.zip'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'
  license :gpl

  app 'Overture.app'
end
