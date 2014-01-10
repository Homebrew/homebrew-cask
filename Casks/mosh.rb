class Mosh < Cask
  url 'https://mosh.mit.edu/mosh-1.2.4-3.pkg'
  homepage 'http://mosh.mit.edu/'
  version '1.2.4'
  sha1 '1ea08056a7b0bb30c0a8b0ddbb9f2f3c26e60ef2'
  install 'mosh-1.2.4-3.pkg'
  uninstall :pkgutil => 'edu.mit.mosh.mosh.pkg'
end
