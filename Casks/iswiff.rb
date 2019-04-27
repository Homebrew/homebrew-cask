cask 'iswiff' do
  version :latest
  sha256 :no_check

  url 'https://echoone.com/iswiff/iSwiff.zip'
  appcast 'https://echoone.com/iswiff/Readme.html'
  name 'iSwiff'
  homepage 'https://echoone.com/iswiff/'

  app 'iSwiff.app'
end
