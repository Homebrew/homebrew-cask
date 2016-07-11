cask 'asepsis' do
  version '1.5.2'
  sha256 'b7c101fd216364423d7de9009aa9e82934042f0403479746fbe604a8b5f3883b'

  url "http://downloads.binaryage.com/Asepsis-#{version}.dmg"
  name 'Asepsis'
  homepage 'http://asepsis.binaryage.com/'
  license :bsd

  pkg 'Asepsis.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.asepsis'

  if MacOS.release >= :el_capitan
    caveats <<-EOS.undent
      In order to use this on El Capitan and later, it must be
      installed while System Integrity Protection is disabled.

      Perform the following steps:
        - Restart your machine and hold CMD-R to boot into
          RecoveryOS
        - Choose Utilities - Terminal
        - Enter the command: csrutil disable
        - Restart your machine and hold SHIFT to boot in
          Safe Mode (no other programs running while your
          machine is in a less-secure state, optional)
        - Re-install this package
        - Restart your machine into RecoveryOS Terminal again,
          and enter the command: csrutil enable
        - Restart your machine

      Uninstallation requires the same.
    EOS
  end
end
