cask 'overture' do
  version '2.4.8'
  sha256 'b2d93c06529bef563b7ee0bbd1e4488c02c22ccf8dd977c5be6e1ff1e912d871'

  # github.com/overturetool/overture was verified as official when first introduced to the cask
  url "https://github.com/overturetool/overture/releases/download/Release%2F#{version}/Overture-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/overturetool/overture/releases.atom',
          checkpoint: '33c6493d0bf533dd560165333c18b05884c22cb3baa97d58b771214d318ebf42'
  name 'Overture Tool'
  homepage 'http://overturetool.org/'

  app 'Overture.app'
end
