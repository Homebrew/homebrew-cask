cask 'dcp-o-matic' do
  version '2.14.17'
  sha256 '04b2800a11f58176189ab571cc77ffcd1e062d47978ba16d4f9169ca3a00d65d'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
