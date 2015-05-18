cask :v1 => 'pycharm-ce' do
  version '4.5'
  sha256 'b919ec9051ec4b9165e504d223731022f394731b8dc3d686c3f0fc5ab7a93c4d'

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
