cask :v1 => 'qtox' do
  version :latest
  sha256 :no_check

  # libtoxcore.so is the official download host per the vendor homepage
  url 'https://jenkins.libtoxcore.so/job/qTox%20OS%20X/lastSuccessfulBuild/artifact/qtox.dmg'
  name 'qTox'
  name 'Tox'
  homepage 'https://tox.im/'
  license :gpl

  app 'qTox.app'
end
