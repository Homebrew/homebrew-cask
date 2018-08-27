cask 'pomello' do
  version '0.9.4'
  sha256 'a281a370b959dc80fe47c6243e2164129adbc25fe3ea006c3cfccbbdedb43a40'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
