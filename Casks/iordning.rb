cask 'iordning' do
  version '6.0.55'
  sha256 '78c90a6c74bb3111ee029cff4b6c96b2c5f1b7b6caf7a406f51800a680deb388'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.major}.zip"
  appcast "https://www.aderstedtsoftware.com/economacs/v#{version.major}_appcast.xml",
          checkpoint: '6192841b1651b26b7178d5496a2b3c9837ea83ba1157b9e52aeca3d885e048c6'
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://aderstedtsoftware.com/'

  app 'iOrdning.app'
end
