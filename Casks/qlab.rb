cask 'qlab' do
  version '4.6.2'
  sha256 '21feecc79f6f19d3c8ecc8f700d89f8c6b260848c1daa8219eba58fbcec34c62'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
