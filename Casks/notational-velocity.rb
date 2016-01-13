cask 'notational-velocity' do
  version :latest
  sha256 :no_check

  url 'http://notational.net/NotationalVelocity.zip'
  appcast 'http://notational.net/nvupdates.xml',
          :checkpoint => '3ae84c21ece993d75c06f984852f4d13bce1a4e37a41dd33a9e64cef36bc08c0'
  name 'Notational Velocity'
  homepage 'http://notational.net'
  license :gpl

  app 'Notational Velocity.app'
end
