cask :v1 => 'netbeans' do
  version '8.0.1'
  sha256 '701f057b9cb9d4f20054acbbe5298369c459827e86021de6a80738a1fc600f1f'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown

  pkg "NetBeans #{version}.mpkg"
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
  # If this ever becomes an issue, :pkgutil => 'glassfish-.*' could be moved
  # to a separate "zap" stanza.
  #
  # The NetBeans installer does some postflight unpacking of paths installed by
  # the OS X installer, so it's insufficient to just delete the paths exposed
  # by pkgutil, hence the additional ":delete" option below.

  uninstall :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
            :delete => '/Applications/NetBeans'
end
