cask 'deckhub' do
  version :latest
  sha256 :no_check

  url 'http://download.getdeckhub.com/', user_agent: :fake
  name 'DeckHub'
  homepage 'https://getdeckhub.com/'
  license :commercial

  app 'DeckHub.app'
end
