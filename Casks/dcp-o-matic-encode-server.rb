cask 'dcp-o-matic-encode-server' do
  version '2.14.4'
  sha256 'ae0a17f9e4367d1eee3c5970476e25f7a459705d637b5c98f624e0bd21ccaf50'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
