cask 'dcp-o-matic-encode-server' do
  version '2.12.12'
  sha256 '2ea4f46557eb69dbb837b532620ab9a69ec32b4432770607d091051dc25364fa'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
