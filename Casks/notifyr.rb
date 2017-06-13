cask 'notifyr' do
  version '1.0.6'
  sha256 '2f4dbb12682172de48494f8d70f7ad5216ba7e60c65528d743d20243ffa46b3f'

  url "http://getnotifyr.com/app/Notifyr#{version.no_dots}.zip"
  appcast 'http://getnotifyr.com/app/appcast.xml',
          checkpoint: 'd5eae10e1d4ecd48c772124510026590edbaafb08755c9e82a4fed168b6444d5'
  name 'Notifyr'
  homepage 'http://getnotifyr.com/'

  prefpane 'Notifyr.prefPane'
end
