cask :v1 => '0xdbe-eap' do
  version '142.2675.6'
  sha256 '5494d5bd9acac414c1003d71751ab51258ba27fdfbf88947e09a4c3d1b39e539'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://www.jetbrains.com/dbe/'
  license :commercial

  app '0xDBE EAP.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
