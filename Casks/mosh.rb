class Mosh < Cask
  url 'https://mosh.mit.edu/mosh-1.2.4-3.pkg'
  homepage 'http://mosh.mit.edu/'
  version '1.2.4'
  sha1 '1ea08056a7b0bb30c0a8b0ddbb9f2f3c26e60ef2'
  install 'mosh-1.2.4-3.pkg'
  uninstall :files => ["/usr/bin/mosh", "/usr/bin/mosh-client", "/usr/bin/mosh-server", "/usr/share/man/man1/mosh-client.1", "/usr/share/man/man1/mosh-server.1?", "/usr/share/man/man1/mosh.1"]
end
