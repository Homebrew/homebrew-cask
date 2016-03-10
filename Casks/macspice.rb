cask 'macspice' do
  version '3.1.10'
  sha256 '60f5157a715e17832c858020d9651116cb1b678a7a443ef4cbb05e8c535b4cbf'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '3906261d637484b9652d5ebf4fc792e5b870bbe0337032c6016bf42c6472c192'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
