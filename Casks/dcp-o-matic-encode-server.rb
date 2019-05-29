cask 'dcp-o-matic-encode-server' do
  version '2.14.7'
  sha256 '7662c27a4cecec0ba8b0ab888e5bb6acc65d7f09bddf73f7f2eba8ffb7c9203a'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
