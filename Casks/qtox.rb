cask :v1 => 'qtox' do
  version :latest
  sha256 :no_check

  url 'https://dist-build.tox.im/qtox.dmg'
  name 'qTox'
  name 'Tox'
  homepage 'https://tox.im/'
  license :gpl

  app 'qTox.app'
end
