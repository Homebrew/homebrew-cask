cask 'abgx360' do
  version '1.0.6'
  sha256 'b2b066d1500e6c6a64d103b2c1a9e1760be0a4e16df314b4868024c19df8c741'

  # dropbox.com/u/59058148 was verified as official when first introduced to the cask
  url "https://dl.dropbox.com/u/59058148/abgx360-#{version}.pkg"
  name 'abgx360'
  homepage 'https://abgx360.xecuter.com/'

  pkg "abgx360-#{version}.pkg"

  uninstall quit:    'net.abgx360.abgx360gui',
            pkgutil: [
                       'net.abgx360.abgx360.pkg',
                       'net.abgx360.abgx360gui.pkg',
                     ]
end
