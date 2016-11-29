cask 'not-tetris' do
  version '2'
  sha256 'ddb4df7f9169e1a03cb5f81e67b972cca4470e4925973af452f6e467830aaea8'

  url "http://stabyourself.net/dl.php?file=nottetris#{version}/nottetris#{version}-osx.zip"
  name 'Not Tetris'
  homepage 'http://stabyourself.net/nottetris2/'

  app "Not Tetris #{version}.app"

  zap delete: '~/Library/Application Support/LOVE/not_tetris_2'
end
