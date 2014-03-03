class NetbeansPhp < Cask
  url 'http://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-php-macosx.dmg'
  homepage 'https://netbeans.org/'
  version '7.4'
  sha256 '200f54223f82d7717f9c7c9484da8d92a94f2ca9bfa0139029a514b106c5f2a7'
  install 'NetBeans 7.4.mpkg'
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
  uninstall(
    :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
    :files => '/Applications/NetBeans'
  )
end
