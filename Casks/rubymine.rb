cask :v1 => 'rubymine' do
  version '7.0.4'
  sha256 'a2340eec7652fefb1d6fc7eacd7338d04aac1106eff40d18ad4fe6d379f3c53a'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'http://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
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
