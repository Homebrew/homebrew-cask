cask :v1 => '0xdbe-eap' do
  version '142.2927.6'
  sha256 'f7e782b9926c6b0604cb80c86932c8e8ab06178161f15aea5831f136b4707210'

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
