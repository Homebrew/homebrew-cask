cask 'deckhub' do
  version '1.0.1'
  sha256 '3d7fcb5039fce81f7ade31f25a0dd6fb721cbd4cf076a2e27dc79990c30caa71'

  url 'http://download.getdeckhub.com/', user_agent: :fake
  name 'DeckHub'
  homepage 'https://getdeckhub.com/'
  license :commercial

  app 'DeckHub.app'
end
