cask :v1 => 'hubic' do
  version '2.1.0.256'
  sha256 'd6987dcb1ff767a96cf0790724b945e9ede22029e56b2d58179dcbfefb660a99'

  # ovh.net is the official download host per the vendor homepage
  url "http://mir7.ovh.net/ovh-applications/hubic/hubiC-OSX/#{version.sub(%r{\.\d+$},'')}/hubiC-OSX-#{version}-osx.pkg"
  name 'hubiC'
  homepage 'https://hubic.com'
  license :gratis

  pkg "hubiC-OSX-#{version}-osx.pkg"

  uninstall :pkgutil => 'com.ovh.hubicmac'
end
