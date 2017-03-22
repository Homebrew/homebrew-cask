cask 'ibored' do
  version '1.1.19'
  sha256 'c507817d3b286f831e2ebb08e24b21e2183d166e3ef5e513f631b3f01bf6f495'

  url "http://files.tempel.org/iBored/iBored-Mac_#{version}.zip"
  appcast 'http://apps.tempel.org/iBored/releasenotes.html',
          checkpoint: '52c548b90bc50c31677c1dfb366f7d22f032017b173bb62feb01a4972e42d1b3'
  name 'iBored'
  homepage 'http://apps.tempel.org/iBored/'

  app 'iBored.app'
end
