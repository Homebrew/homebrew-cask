cask 'gifs' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/orta/GIFs/master/web/GIFs.app.zip'
  name 'GIFs'
  homepage 'https://github.com/orta/GIFs'
  license :bsd

  app 'GIFs.app'
end
