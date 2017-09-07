cask 'createuserpkg' do
  version '1.2.4'
  sha256 '4bac91af9d8fb2e34c036964c6f9bf49a8f19f8e994b30e2900a0ddbebef246f'

  url "https://magervalp.github.io/CreateUserPkg/Distributions/CreateUserPkg-#{version}.dmg"
  appcast 'https://github.com/MagerValp/CreateUserPkg/releases.atom',
          checkpoint: '2fd4863d641fb7b17c930de538d49e3665bc9392d0fa1cc94faedd4cbed3914c'
  name 'CreateUserPkg'
  homepage 'https://magervalp.github.io/CreateUserPkg/'

  app 'CreateUserPkg.app'
end
