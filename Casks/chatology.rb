cask :v1 => 'chatology' do
  version '1.0.7'
  sha256 '5cb80a22b3e9cbd654591606fcea41d9cf2484ca4cd528736118a94c6034158d'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'
  license :commercial

  app 'Chatology.app'
end
