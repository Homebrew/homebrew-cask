cask 'laverna' do
  version '0.7.1'
  sha256 '2044a681fa23583510e1a8a6a151c21cbd083f29cc66c79ad1e40c27c5a5828b'

  # github.com/Laverna/laverna was verified as official when first introduced to the cask
  url "https://github.com/Laverna/laverna/releases/download/#{version}/laverna-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Laverna/laverna/releases.atom',
          checkpoint: 'f76275b249b08d1b525da20e6391570e4c687ab32e8be78b9d88473fc086772a'
  name 'Laverna'
  homepage 'https://laverna.cc/'

  app 'Laverna.app'
end
