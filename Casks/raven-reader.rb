cask 'raven-reader' do
  version '0.7.5'
  sha256 'ac0a020fcdc601bb0053599a80d0dc7c82ffcd36af7b8347226c31e46f8ca4df'

  url "https://download.ravenreader.app/homebrew/raven-reader-#{version}.dmg"
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  app 'Raven Reader.app'
end
