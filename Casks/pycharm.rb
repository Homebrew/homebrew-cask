cask :v1 => 'pycharm' do
  version '4.0.4'
  sha256 '56eeeb15a1b0f2b0fbbb9fc918f3b6eb5ba5f9bbbfcb2b032864fbfdbc4c5b87'

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
