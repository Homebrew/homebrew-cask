cask :v1 => 'pycharm' do
  version '4.0.5'
  sha256 '102e1ad4980767e4312523101fcf439ce1952d5f2c32d670a3b98251612c957b'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'http://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
