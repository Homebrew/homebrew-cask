cask :v1 => 'pycharm-ce' do
  version '4.5.2'
  sha256 'e1541e68a3c59464f7f8266f144ebc4dc99499da914d001f768e0e0b1dc2d6fd'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'http://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
