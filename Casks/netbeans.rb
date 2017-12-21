cask 'netbeans' do
  version '8.2'
  sha256 'ddcf37e91d960cca6b6a37c95eabf2c6f15330ed708bfd79be796de00da20e5e'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-macosx.dmg"
  name 'NetBeans IDE'
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

  zap trash: [
               '~/Library/Application Support/NetBeans',
               '~/Library/Caches/NetBeans',
             ]
end
