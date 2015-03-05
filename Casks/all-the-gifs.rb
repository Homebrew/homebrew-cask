cask :v1 => 'all-the-gifs' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/orta/GIFs/master/web/GIFs.app.zip'
  name 'All The GIFs'
  homepage 'https://github.com/orta/GIFs'
  license :bsd

  app 'All The GIFs.app'
end
