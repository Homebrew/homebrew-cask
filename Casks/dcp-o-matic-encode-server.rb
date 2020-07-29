cask 'dcp-o-matic-encode-server' do
  version '2.14.33'
  sha256 'd9e6aed8351fd4c8417dc97e31982ee4a2983fb9778bc86cf384a3ecbf86ab51'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
