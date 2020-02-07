cask 'qlab' do
  version '4.6'
  sha256 'f289aa5114eacbb5e8b30ef60d1b5ce87d9e831efa4b7155e16c8336719e8cee'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
