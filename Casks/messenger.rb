cask :v1 => 'messenger' do
  version '0.0.6.1429084595-186e947e4741dba4'
  sha256 '8942f892881a1d9d849a081d9dce832ba6daa7f837a38f6949adad97fbc5cfbf'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
