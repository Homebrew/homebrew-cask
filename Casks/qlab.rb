cask 'qlab' do
  version '4.4.4'
  sha256 '580e8bdcaf445bb221c84ef17ba728e4c924cec73c3d55cab37b01ec2705da84'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
