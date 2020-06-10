cask 'pomello' do
  version '0.10.13'
  sha256 '7b9ca00db04be017c7fdce3e7fd3384f12dd3a85a53f164d332f233c6614744f'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
