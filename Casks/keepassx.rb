class Keepassx < Cask
  url 'https://www.keepassx.org/dev/attachments/download/59/KeePassX-2.0-alpha5.dmg'
  homepage 'http://www.keepassx.org'
  version '2.0-alpha5'
  sha256 '7d1e3de8446421d1c4cb920364907de3d03cd3eaedfa96602fac8983479a5303'
  link 'KeePassX.app'
  # This caveat added Mar 2014.  OK to delete it after 3-4 months.
  caveats <<-EOS.undent
    If you are upgrading from an older version of KeePassX, you must
    manually import the old-format database via menu item

      Database -> Import KeePass 1 database
  EOS
end
