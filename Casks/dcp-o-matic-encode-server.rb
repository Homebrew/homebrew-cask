cask 'dcp-o-matic-encode-server' do
  version '2.14.26'
  sha256 '4f7b590fbf6a52d525d3fd700bd6900d40f0caf23eff5881eeaa702c541455be'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
