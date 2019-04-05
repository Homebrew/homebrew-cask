cask 'pomello' do
  version '0.10.6'
  sha256 '55c4ffd8f2e49f9fac3b754f5f40c14fc5ccc9371b96610168fb73f9b1641678'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
