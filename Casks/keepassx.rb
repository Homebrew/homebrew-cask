class Keepassx < Cask
  version '2.0-alpha6'
  sha256 '55aeaba8257d728b62ba173ba56df27897552737a556dc1e4e4ed6dcd3d6dd8a'

  url 'https://www.keepassx.org/dev/attachments/download/72/KeePassX-2.0-alpha6.dmg'
  homepage 'http://www.keepassx.org'

  app 'KeePassX.app'
  # This caveat added Mar 2014.  OK to delete it after 3-4 months.
  caveats <<-EOS.undent
    If you are upgrading from an older version of KeePassX, you must
    manually import the old-format database via menu item

      Database -> Import KeePass 1 database
  EOS
end
