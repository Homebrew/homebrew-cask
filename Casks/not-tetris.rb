cask 'not-tetris' do
  version '2'
  sha256 'ddb4df7f9169e1a03cb5f81e67b972cca4470e4925973af452f6e467830aaea8'

  url "http://stabyourself.net/dl.php?file=nottetris#{version}/nottetris#{version}-osx.zip"
  appcast 'http://stabyourself.net/nottetris2/',
          checkpoint: 'f84c9f10ea44b7625be3e76d7c5aedaac359f8ebd123beed0677b120f8eeb5c8'
  name 'Not Tetris'
  homepage 'http://stabyourself.net/nottetris2/'

  app "Not Tetris #{version}.app"

  zap delete: '~/Library/Application Support/LOVE/not_tetris_2'
end
