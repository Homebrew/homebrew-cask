cask :v1 => 'pycharm-ce' do
  version '4.5.3'
  sha256 '43b342eb118eb5d760ea9d612a37f8d9f7b27815848319e1ee7c0595e1bfec53'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
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
