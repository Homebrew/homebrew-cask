cask :v1 => 'rubymine' do
  version '8.0.0'
  sha256 '56ce3197e05f313ff1d8993938899f6da4305d499aedc07558956c82efb2d0ba'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.delete('.')}",
                  "~/Library/Preferences/RubyMine#{version.delete('.')}",
                 ]

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
