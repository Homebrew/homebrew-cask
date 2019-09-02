cask 'hype' do
  version '4.0.1'
  sha256 'f8fcf2cbd5b0e0412c6b7ee00c7f5fe7141514fd075e7acebf2081f2ec2c13d0'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
