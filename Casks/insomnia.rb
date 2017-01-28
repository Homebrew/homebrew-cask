cask 'insomnia' do
  version '4.2.3'
  sha256 'e6cb61a7b2a27f967cb99ae4220239a5acc92fde1bb5a63583d16df8f9d781ea'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
