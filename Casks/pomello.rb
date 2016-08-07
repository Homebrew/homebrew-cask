cask 'pomello' do
  version :latest
  sha256 :no_check

  url 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'
  license :closed

  app 'Pomello.app'
end
