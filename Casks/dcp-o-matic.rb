cask 'dcp-o-matic' do
  version '2.12.18'
  sha256 '813b9fb233a9a5ba78fe756ed0ade1d682caed8037f27492c23a2a4fda35e3bb'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
