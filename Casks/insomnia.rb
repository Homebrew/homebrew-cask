cask 'insomnia' do
  version '4.0.9'
  sha256 '7cf66c24d3a32d6569c2988ed029f81a82cc3ff35eb3c30d9f2dcfa8f8e5c07d'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
