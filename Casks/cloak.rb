cask 'cloak' do
  version '2.1.5.1'
  sha256 '02f1c7662d454ff0896c3383361815d9c41692bf92fd6475793b92009b7342e0'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'c48f77c0bddaef15b0c0e443802e79ce2afaf716716ce16d07e99abd2a016202'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
