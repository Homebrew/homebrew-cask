cask 'fetch' do
  version '5.7.5'
  sha256 '8f154a7e353dc6ab672d794b019fa5f298010a366379eda3cfa9a1c1c9d71e0d'

  url "http://fetchsoftworks.com/fetch/download/Fetch_#{version}.dmg?direct=1"
  name 'Fetch'
  homepage 'https://fetchsoftworks.com/fetch/'

  app 'Fetch.app'
end
