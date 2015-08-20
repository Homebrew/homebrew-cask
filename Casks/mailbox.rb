cask :v1 => 'mailbox' do
  version '0.7'
  sha256 'e6ca3261c3571ba6b4b6628095341272f20c7dd3f7f8f04c597076ce2b04f7eb'

  url "https://download.mailboxapp.com/Mailbox-Beta-#{version}.zip"
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox Beta.app'

  zap :delete => '~/Library/Caches/com.dropbox.mbd.external-beta/'
end
