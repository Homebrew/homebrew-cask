cask 'hype' do
  version '4.0.2'
  sha256 '2140558aa292e73ad5465f0b2962e37da7d36db56912f6ab5af6e5f9506e3d5f'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
