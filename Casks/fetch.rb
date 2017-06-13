cask 'fetch' do
  version '5.7.6'
  sha256 '0687113cd0b94784a5cd6c1f9f609cada175aac0163f3bf104305e68da847e16'

  url "http://fetchsoftworks.com/fetch/download/Fetch_#{version}.dmg?direct=1"
  name 'Fetch'
  homepage 'https://fetchsoftworks.com/fetch/'

  app 'Fetch.app'
end
