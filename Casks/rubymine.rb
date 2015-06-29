cask :v1 => 'rubymine' do
  version '7.1.3'
  sha256 '69c156cedf6b11dd913d5367d1f2a0e2bea9bd1755f113b762138e5718859b2d'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
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
