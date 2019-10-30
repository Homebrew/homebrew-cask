cask 'dcp-o-matic-kdm-creator' do
  version '2.14.12'
  sha256 '2d7d4bf61d0c52d5ea6240b30bc4a6795dc731a929913d76795b6e597490dfd3'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
