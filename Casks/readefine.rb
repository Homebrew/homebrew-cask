cask :v1 => 'readefine' do
  version :latest
  sha256 :no_check

  url 'http://readefine.anirudhsasikumar.net/ReadefineDesktop.air'
  name 'Readefine'
  homepage 'http://readefine.anirudhsasikumar.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Readefine.app'
end
