cask 'dcp-o-matic-kdm-creator' do
  version '2.14.31'
  sha256 'c87efbaf83520b9b9ee6720706dd74e972ff6b6b0fcf5c898abc97553a88974d'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
