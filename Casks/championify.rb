cask 'championify' do
  version '2.0.8'
  sha256 '3180dfde7410a35b32227578877bd4519f1aca7fd724eca575052a9b0023435c'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '9cc381f0732e78e888d4580a96dc817ca91342ad45e404f24174419e18699653'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
