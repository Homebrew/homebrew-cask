cask 'hype' do
  version '3.6.7'
  sha256 'bf7c50c3586db09eeb957900a156b4e0c14a53b5a92fdb6471a7a952649cc324'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
