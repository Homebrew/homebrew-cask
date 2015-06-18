cask :v1 => 'mailbox' do
  version '0.4.2_150316'
  sha256 '5431ef92b83f5752193cbdaf2ae82a0798537c8b84426bc09c5367a7345875c7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mb-dtop.s3.amazonaws.com/external-beta/Mailbox_EXT_Beta_#{version}.zip"
  appcast 'https://mb-dtop.s3.amazonaws.com/external-beta/external-beta-appcast.xml',
          :sha256 => '7f1958d4be2af3ea5283bc586f97d73df07cb559ae954f4914815529d99e62dc'
  name 'Mailbox'
  homepage 'http://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => '~/Library/Caches/com.dropbox.mbd.external-beta/'
end
