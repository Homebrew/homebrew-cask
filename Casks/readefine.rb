cask :v1 => 'readefine' do
  version :latest
  sha256 :no_check

  url 'http://readefine.anirudhsasikumar.net/ReadefineDesktop.air'
  homepage 'http://readefine.anirudhsasikumar.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'Readefine.app'
end
