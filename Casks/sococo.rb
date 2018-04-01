cask 'sococo' do
  version '0.5.5-14530'
  sha256 '3ca1240ba07f51af61d26cbc6b0aef57d3880cdcab0aa111085c1488ffb68563'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json',
          checkpoint: 'ff5eb44b130f2cbc05ed7e3b237aecb11fff8bdd2d65ee4feacf5bd5990957bc'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
