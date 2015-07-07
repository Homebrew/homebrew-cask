cask :v1 => 'qtox' do
  version :latest
  sha256 :no_check

  # tox.im is the official download host per the vendor homepage
  url 'https://dist-build.tox.im/qtox/osx/qtox.zip'
  name 'qTox'
  name 'Tox'
  homepage 'https://tox.im/'
  license :gpl

  app 'qTox.app'
end
