cask 'simplemoviex' do
  version :latest
  sha256 :no_check

  url 'http://simplemoviex.com/SimpleMovieX/SimpleMovieX.zip'
  name 'SimpleMovieX'
  homepage 'http://simplemoviex.com/SimpleMovieX/'

  app 'SimpleMovieX.app'

  zap trash: '~/Library/Preferences/com.BJ.SimpleMovieX.plist'
end
