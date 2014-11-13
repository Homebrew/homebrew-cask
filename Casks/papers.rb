cask :v1 => 'papers' do
  version :latest
  sha256 :no_check

  url 'http://papersapp.com/papers/download'
  appcast 'http://www.papersapp.com/papers/appcast_v3.xml'
  homepage 'http://www.papersapp.com/papers/'
  license :unknown

  app 'Papers.app'
end
