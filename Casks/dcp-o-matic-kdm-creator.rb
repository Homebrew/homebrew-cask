cask 'dcp-o-matic-kdm-creator' do
  version '2.14.15'
  sha256 '80880d4bf33cce4b0c326819a7c15d19d5d3a5a2737081f5f11d7932242eda96'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
