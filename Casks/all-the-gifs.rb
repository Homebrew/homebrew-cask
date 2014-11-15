cask :v1 => 'all-the-gifs' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/orta/GIFs/master/web/GIFs.app.zip'
  homepage 'https://github.com/orta/GIFs'
  license :oss

  app 'All The GIFs.app'
end
