class Mailbox < Cask
  version '0.3.10'
  sha256 '8c879e3a79963ddc65bcd56e47cc8f4706096563c6658beeb3e406f882447a99'

  url "https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_Ext_Beta_#{version}_140918.zip"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml'
  homepage 'http://www.mailboxapp.com/'

  app 'Mailbox (Beta).app'
end
