cask 'notifyr' do
  version '1.0.6'
  sha256 '2f4dbb12682172de48494f8d70f7ad5216ba7e60c65528d743d20243ffa46b3f'

  url "http://getnotifyr.com/app/Notifyr#{version.no_dots}.zip"
  appcast 'http://getnotifyr.com/app/appcast.xml',
          checkpoint: '4cbac0fcae6af8a1c00bbc8e5a8c499ab5e4cd18a5126d518205924705fb3ab4'
  name 'Notifyr'
  homepage 'http://getnotifyr.com'

  prefpane 'Notifyr.prefPane'
end
