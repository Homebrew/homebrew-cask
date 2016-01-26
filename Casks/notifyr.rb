cask 'notifyr' do
  version '1.0.5'
  sha256 '6ca121656f22d079c5f45a617d16a31a40ce3137d9e2a11f05a620719de90500'

  url "http://getnotifyr.com/app/Notifyr#{version.no_dots}.zip"
  appcast 'http://getnotifyr.com/app/appcast.xml',
          checkpoint: '4cbac0fcae6af8a1c00bbc8e5a8c499ab5e4cd18a5126d518205924705fb3ab4'
  name 'Notifyr'
  homepage 'http://getnotifyr.com'
  license :gratis

  prefpane 'Notifyr.prefPane'
end
