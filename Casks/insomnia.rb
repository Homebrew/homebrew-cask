cask 'insomnia' do
  version '4.0.13'
  sha256 '8cf4abe469302b025deb496db1179fcfc99907a74130d9ae74dde36417faa45f'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
