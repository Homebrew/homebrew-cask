class LegacyKeepassx < Cask
  version '0.4.3'
  sha256 '15ce2e950ab78ccb6956de985c1fcbf11d27df6a58ab7bf19e106f0a1dc2fedd'

  url 'https://www.keepassx.org/releases/KeePassX-0.4.3.dmg'
  homepage 'https://www.keepassx.org/'

  link 'KeePassX.app'
    caveats <<-EOS.undent
    This is legacy KeePassX that only supports KeePass 1 databases
  EOS
end
