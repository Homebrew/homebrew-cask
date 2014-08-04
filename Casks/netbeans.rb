class Netbeans < Cask
  version '8.0'
  sha256 'fcbac4765de78af05e5b4ac29f6d418ad82e29c1cce4f536d93e4bc4272f90d4'

  url 'http://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-macosx.dmg'
  homepage 'https://netbeans.org/'

  install 'NetBeans 8.0.mpkg'
  # Theoretically this uninstall could conflict with a separate GlassFish
  # installation.
  #
  # In practice, it appears that the normal GlassFish installation process does
  # not use the OS X installer and so isn't in the pkgutil receipts database.
  #
  # https://glassfish.java.net/docs/4.0/installation-guide.pdf
  #
  # Arguably if the GlassFish installation by NetBeans inside its own target
  # directory were to conflict with a standard GlassFish installation in the
  # receipts database that would be a bug upstream with NetBeans not prefixing
  # its GlassFish package with "org.netbeans."
  #
  # The NetBeans installer does some postflight unpacking of paths installed by
  # the OS X installer, so it's insufficient to just delete the paths exposed
  # by pkgutil, hence the additional `:files` option below.
  uninstall :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
              :files => [
                         '/Applications/NetBeans'
                        ]
end
