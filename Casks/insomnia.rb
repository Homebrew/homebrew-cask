cask 'insomnia' do
  version '3.5.7'
  sha256 'f6fd50eaf2dc992be4e82ed9162f2bcdbeec944daf6d7b6174d64ca50bc8f7ab'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'
  license :unknown

  app 'Insomnia.app'
end
