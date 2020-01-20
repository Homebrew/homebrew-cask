cask 'dcp-o-matic-encode-server' do
  version '2.14.23'
  sha256 '9e47c6a6c83d1a27d2d8ded3ff248ff9232de15358483f5eabc7811a68486069'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
