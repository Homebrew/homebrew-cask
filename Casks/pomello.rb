cask 'pomello' do
  version '0.10.7'
  sha256 '9535536d27a12947572343909d71510bdfd678a32e47720ffb1ff455b07adc7f'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
