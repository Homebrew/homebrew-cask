cask :v1 => 'horst' do
  version :latest
  sha256 :no_check

  url 'http://penck.de/download/horst/zip/latest'
  name 'Horst'
  homepage 'http://penck.de/horst/'
  license :freemium

  app 'Horst.app'
end
