cask 'insomnia' do
  version '3.5.13'
  sha256 '961e3e753467c0d033a87c8b46d04a90f226d099c35fa338979f27efdd78bcf5'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
