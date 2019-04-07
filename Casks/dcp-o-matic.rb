cask 'dcp-o-matic' do
  version '2.13.144'
  sha256 '512c204b8098b79ec45d2b551c6794d0a472bac0df5d4e701b382a743a2bc750'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
