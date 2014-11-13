cask :v1 => 'ibored' do
  version '1.1.19'
  sha256 'c507817d3b286f831e2ebb08e24b21e2183d166e3ef5e513f631b3f01bf6f495'

  url "http://files.tempel.org/iBored/iBored-Mac_#{version}.zip"
  homepage 'http://apps.tempel.org/iBored/'
  license :closed

  app 'iBored.app'
end
