cask 'dcp-o-matic-kdm-creator' do
  version '2.14.5'
  sha256 '455aaca07b0a0224aed0dbb8f56588d4e443a408163cf12fdf61c0259bfa7b61'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
