cask 'macspice' do
  version '3.1.13'
  sha256 '2c963c9b1ee0d8a142b841f0bc702dada1c572a1a479e2dbc38f16545eb8c5d1'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '30954bf5b5d802046d78df4b47e6988ada7567bcd2ca068e14428d64b647022a'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'

  app 'MacSpice.app'
end
