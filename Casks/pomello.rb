cask 'pomello' do
  version '0.10.12'
  sha256 '4c9397f39f91f9ff1c689063079b79f2af1cb51e8ea39183c1bacf2ca8e7fe0a'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
