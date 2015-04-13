cask :v1 => 'not-tetris' do
  version '2'
  sha256 'ddb4df7f9169e1a03cb5f81e67b972cca4470e4925973af452f6e467830aaea8'

  url "http://stabyourself.net/dl.php?file=nottetris#{version}/nottetris#{version}-osx.zip"
  homepage 'http://stabyourself.net/nottetris2/'
  license :oss

  app "Not Tetris #{version}.app"
end
