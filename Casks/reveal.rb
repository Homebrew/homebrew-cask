cask 'reveal' do
  version '8'
  sha256 'c0cff3320276e465822f763a059d1fa7449d3e86fdf6b76df078c7826cd668b8'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/',
          checkpoint: '37ccf49372e6e047fb88af4cdaad7a485d7b5175183f4935db8797f8c36a0972'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  app 'Reveal.app'
end
