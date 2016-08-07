cask 'notational-velocity' do
  version '2.0b5'
  sha256 '301ee466e866b4f665d5d126f4775b3a004f8b95776a75bcf42385a6266b6298'

  url 'http://notational.net/NotationalVelocity.zip'
  appcast 'http://notational.net/nvupdates.xml',
          checkpoint: '8d4ad4439a1c5963205f5183ac55682b3935f3c44a711fcf1cd9a1db1a855ae1'
  name 'Notational Velocity'
  homepage 'http://notational.net'
  license :gpl

  app 'Notational Velocity.app'
end
