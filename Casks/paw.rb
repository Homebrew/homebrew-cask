cask 'paw' do
  version '2.2.7'
  sha256 'fb886a49d67738779f54c9f9bf775d78fbb9de4d971c48ea1fd5aebf227f8d17'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
