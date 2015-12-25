cask 'notational-velocity' do
  version :latest
  sha256 :no_check

  url 'http://notational.net/NotationalVelocity.zip'
  appcast 'http://notational.net/nvupdates.xml',
          :sha256 => '7bc6cdef4f6682626f6af044653c51f85b69692554f61bb80ef518f05eeaffda'
  name 'Notational Velocity'
  homepage 'http://notational.net'
  license :gpl

  app 'Notational Velocity.app'
end
