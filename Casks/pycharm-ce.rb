cask :v1 => 'pycharm-ce' do
  version '4.0.6'
  sha256 '9f70338eb6dc45071f11cb3ac7bc11cd7191df8d9f8f84fd31903d2c8daa6a72'

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
