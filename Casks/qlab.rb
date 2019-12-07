cask 'qlab' do
  version '4.5.4'
  sha256 'c4f6cfd1b4b5c787e8cb8b992ffe5a4c68e0fd8006bc1e31aac48f50ec2f66be'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
