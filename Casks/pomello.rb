cask 'pomello' do
  version '0.10.5'
  sha256 '0a580ff06e64ae71b19ac05886523cc4c73bf8450a96622e455f2a8c9ad4a412'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
