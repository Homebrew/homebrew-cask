cask 'iordning' do
  version '6.0.65'
  sha256 'd0c2252eea5e9025b22abd54f66d8c9dd9791e1aa93453e7e7aa13e7a55d396b'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.major}.zip"
  appcast "https://www.aderstedtsoftware.com/economacs/v#{version.major}_appcast.xml"
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://www.aderstedtsoftware.com/iordning/'

  app 'iOrdning.app'
end
