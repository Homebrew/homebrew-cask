class Qtox < Cask
  version 'latest'
  sha256 :no_check

  url 'https://jenkins.libtoxcore.so/job/ToxGUI%20OS%20X/lastSuccessfulBuild/artifact/qtox.dmg'
  homepage 'https://tox.im/'

  link 'qtox.app'

  caveats 'Tox isn\'t complete yet, but we encourage you to contribute to help make us awesome!'
end
