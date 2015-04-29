cask :v1 => 'mailbox' do
  version '0.4.2_150316'
  sha256 '5431ef92b83f5752193cbdaf2ae82a0798537c8b84426bc09c5367a7345875c7'

  url "https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_EXT_Beta_#{version}.zip"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml',
          :sha256 => '28d87eb6a36077e16b8c52ede51d81316eea6bb0636608616173e0edbaa5be11'
  name 'Mailbox'
  homepage 'http://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'
end
