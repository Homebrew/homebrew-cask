cask :v1 => 'pycharm-educational' do
  version '1.0.1'
  sha256 'fedffd333b42bb43293ed08df3c463e961452c842dec8d72be37d419e30cfea6'

  url "http://download-cf.jetbrains.com/python/pycharm-educational-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Educational Edition'
  name 'PyCharm EE'
  homepage 'https://www.jetbrains.com/pycharm-educational'
  license :apache

  app 'PyCharm Educational.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
