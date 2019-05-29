cask 'dcp-o-matic-encode-server' do
  version '2.14.5'
  sha256 'aa47c4c36d578284b1f9f484a4cfa062b14759221a8a97f2aff562c946173791'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
