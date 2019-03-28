cask 'hype' do
  version '3.6.8'
  sha256 '0f82b4b9b453eaeb834ec64d277a79c8ac74e938a44d6c6c4efec3ed7ff2623f'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
