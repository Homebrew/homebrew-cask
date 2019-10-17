cask 'dcp-o-matic-encode-server' do
  version '2.14.11'
  sha256 'b8fbd56f3c8749ff9b69f8276d68fbd44399928fbfcbf997a0a50ad133977ad4'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
