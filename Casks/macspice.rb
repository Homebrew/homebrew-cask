cask 'macspice' do
  version '3.1.9'
  sha256 'f0231aacc7aa881ed286015af599d5f550ab8b054aca80ce04c8d7a3abf1305c'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: 'ad5ccb1f63ee40273acf297e470ea23af20cd194e2e148ec663824ed9d2ec3b8'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
