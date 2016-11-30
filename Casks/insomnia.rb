cask 'insomnia' do
  version '3.7.3'
  sha256 '4554ec2d7a08c46398275294fa054ce93584e56c2cad67677295b127abe18231'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
