cask :v1 => '0xdbe-eap' do
  version '141.191'
  sha256 'bde3e0b3988057ca7cc944e99b07d53b4aedd08ac5fbd77aee4f44c75248e9fe'

  url "http://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'http://www.jetbrains.com/dbe/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
