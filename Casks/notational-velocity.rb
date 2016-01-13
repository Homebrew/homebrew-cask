cask 'notational-velocity' do
  version :latest
  sha256 :no_check

  url 'http://notational.net/NotationalVelocity.zip'
  appcast 'http://notational.net/nvupdates.xml',
          :checkpoint => '8d4ad4439a1c5963205f5183ac55682b3935f3c44a711fcf1cd9a1db1a855ae1'
  name 'Notational Velocity'
  homepage 'http://notational.net'
  license :gpl

  app 'Notational Velocity.app'
end
