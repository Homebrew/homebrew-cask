class Gpgtools < Cask
  url 'https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.10.22'
  sha256 'd37ccf01e5ddd07dd84b76574e99b605ca9ead89cb0c6c126f4045e271eb3841'
  install 'Install.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/local/MacGPG2/libexec/fixGpgHome', Etc.getpwuid(Process.euid).name,
                                                    ENV['GNUPGHOME'] ? ENV['GNUPGHOME'] : "#{ENV['HOME']}/.gnupg"
  end
end
