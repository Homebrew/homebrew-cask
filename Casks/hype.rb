cask 'hype' do
  version '4.0.3'
  sha256 '56f57bc7c9be4d535ac1ed32f3c227c50bcb3651c11d474282a56bee4537a876'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
