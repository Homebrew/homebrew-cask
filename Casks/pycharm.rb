cask :v1 => 'pycharm' do
  version '4.5'
  sha256 '96f97b5d031bdb509d300528aa79e60774fc8b2ec1e88800324095babb4902c9'

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
