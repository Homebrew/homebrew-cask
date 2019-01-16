cask 'dcp-o-matic' do
  version '2.12.15'
  sha256 '032f146270ef82403a0b36277706a43626bdc532277e601a5086fca2b68351ed'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
