cask 'corsixth' do
  version '0.40'
  sha256 'd4f3a289954fc2eb400615114f0a8bd729e38b310beedf20dbe97a0e1cecb127'

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}-OSX.dmg"
  appcast 'https://github.com/CorsixTH/CorsixTH/releases.atom',
          checkpoint: '414fc9fbb5bdd4e2de63d29328229ded46e3fc904b11c54bd82df97b061e83c1'
  name 'CorsixTH'
  homepage 'https://github.com/CorsixTH/CorsixTH'
  license :mit

  app 'CorsixTH/CorsixTH.app'
  app 'CorsixTH/AnimView.app'
  app 'CorsixTH/MapEdit.app'
end
