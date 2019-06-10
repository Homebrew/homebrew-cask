cask 'hype' do
  version '4.0.0'
  sha256 '11c6669185ce0a2fca39abbbb9d16ac5746a4e6ba3e27ad1f504069df6ea3cdf'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app 'Hype4.app', target: "Hype #{version.major}.app"
end
