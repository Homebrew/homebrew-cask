cask :v1 => 'mailbox' do
  version '0.3.14'
  sha256 'c7ddd88dfa81200fac95be6c9318a9a1539874a3e03457d67ff48009ed126fb1'

  url "https://download.mailboxapp.com/Mailbox-Beta-#{version}.dmg"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml',
          :sha256 => '28d87eb6a36077e16b8c52ede51d81316eea6bb0636608616173e0edbaa5be11'
  homepage 'http://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'
end
