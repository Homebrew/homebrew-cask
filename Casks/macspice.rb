cask 'macspice' do
  version '3.1.9'
  sha256 'f0231aacc7aa881ed286015af599d5f550ab8b054aca80ce04c8d7a3abf1305c'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '79d1e2a5a03f4bf6cbf99da2055d762f9607579a40db686f9e283993d3569a70'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
