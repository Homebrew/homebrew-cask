class NotationalVelocity < Cask
  version 'latest'
  sha256 :no_check

  url 'http://notational.net/NotationalVelocity.zip'
  appcast 'http://notational.net/nvupdates.xml'
  homepage 'http://notational.net'

  app 'Notational Velocity.app'
end
