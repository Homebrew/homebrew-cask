cask 'not-tetris' do
  version '2'
  sha256 'ddb4df7f9169e1a03cb5f81e67b972cca4470e4925973af452f6e467830aaea8'

  url "https://stabyourself.net/dl.php?file=nottetris#{version}/nottetris#{version}-osx.zip"
  appcast 'https://stabyourself.net/nottetris2/'
  name 'Not Tetris'
  homepage 'https://stabyourself.net/nottetris2/'

  app "Not Tetris #{version}.app"

  zap trash: '~/Library/Application Support/LOVE/not_tetris_2'
end
