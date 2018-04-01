cask 'davmail' do
  version '4.8.3-2554'
  sha256 '5e9eead4513a5198801a204de6ffb35e0846b059f399166e346d12a9219a5e44'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: '3c8ccb118331ad32345173770e4d63b61f89736beb93a988e1c8b3444541976a'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end
