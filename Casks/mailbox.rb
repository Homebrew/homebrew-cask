cask :v1 => 'mailbox' do
  version '0.3.14_141017'
  sha256 '93a0ebd06399b899a8742148c1df6876f82716790dd394009fd8edc59078e902'

  url "https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_Ext_Beta_#{version}.zip"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml',
          :sha256 => '28d87eb6a36077e16b8c52ede51d81316eea6bb0636608616173e0edbaa5be11'
  homepage 'http://www.mailboxapp.com/'
  license :unknown

  app 'Mailbox (Beta).app'
end
