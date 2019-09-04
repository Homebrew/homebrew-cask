cask 'dcp-o-matic-encode-server' do
  version '2.14.10'
  sha256 '1a9454ee430a15ea9891a059eb5957cb32753b6e324736807f3f728ef35f6f6f'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
