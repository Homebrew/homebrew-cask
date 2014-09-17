class AllTheGifs < Cask
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/orta/GIFs/master/web/GIFs.app.zip'
  homepage 'https://github.com/orta/GIFs'

  app 'All The GIFs.app'
end
