class Abgx360 < Cask
  version '1.0.6'
  sha256 'b2b066d1500e6c6a64d103b2c1a9e1760be0a4e16df314b4868024c19df8c741'

  url 'http://dl.dropbox.com/u/59058148/abgx360-1.0.6.pkg'
  homepage 'http://abgx360.net/'

  pkg 'abgx360-1.0.6.pkg'
  uninstall :quit => 'net.abgx360.abgx360gui',
            :pkgutil => [
                         'net.abgx360.abgx360.pkg',
                         'net.abgx360.abgx360gui.pkg',
                        ]
end
