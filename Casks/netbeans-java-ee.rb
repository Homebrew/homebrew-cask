cask 'netbeans-java-ee' do
  version '8.2'
  sha256 '5b897c3f1fa657749d5dcddbc3a95a1a15ec35e7cab08aad34befadd7ec3f1e7'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-javaee-macosx.dmg"
  name 'NetBeans IDE for Java EE'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  # Theoretically this uninstall could conflict with a separate GlassFish
  # installation.
  #
  # In practice, it appears that the normal GlassFish installation process does
  # not use the macOS installer and so isn't in the pkgutil receipts database.
  #
  # https://glassfish.java.net/docs/4.0/installation-guide.pdf
  #
  # Arguably if the GlassFish installation by NetBeans inside its own target
  # directory were to conflict with a standard GlassFish installation in the
  # receipts database that would be a bug upstream with NetBeans not prefixing
  # its GlassFish package with "org.netbeans."
  #
  # If this ever becomes an issue, pkgutil: 'glassfish.*' could be moved to a
  # separate "zap" stanza.
  #
  # The NetBeans installer does some postflight unpacking of paths installed by
  # the macOS installer, so it's insufficient to just delete the paths exposed
  # by pkgutil, hence the additional ":delete" option below.

  uninstall pkgutil: 'org.netbeans.ide.*|glassfish.*',
            delete:  '/Applications/NetBeans'
end
