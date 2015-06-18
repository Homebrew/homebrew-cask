cask :v1 => 'netloc' do
  version :latest
  sha256 :no_check

  url 'https://github.com/fataio/netloc/blob/master/dist/netloc.zip?raw=true'
  name 'netloc'
  homepage 'https://github.com/fataio/netloc/'
  license :mit

  app 'netloc.app'
end
