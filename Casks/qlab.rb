cask 'qlab' do
  version '4.3.3'
  sha256 'de5f892c85565174176c24b4c4dd98da8caeee471b83ad771562559f037305ae'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
