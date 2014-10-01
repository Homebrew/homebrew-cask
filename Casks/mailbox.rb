class Mailbox < Cask
  version '0.3.11_140925'
  sha256 '6f234a2720441b76e2cff1c9f26abfcf839b61408e02e0cc0bd29b223d868c19'

  url "https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_Ext_Beta_#{version}.zip"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml'
  homepage 'http://www.mailboxapp.com/'
  license :unknown

  app 'Mailbox (Beta).app'
end
