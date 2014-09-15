class Mailbox < Cask
  version '0.3.9'
  sha256 '1d17dacbe97d7a2851bfa7331e27b4e98d847da58956db8808d6d1108d605725'

  url 'https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_Ext_Beta_0.3.9_140908.zip'
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml'
  homepage 'http://www.mailboxapp.com/'

  app 'Mailbox (Beta).app'
end
