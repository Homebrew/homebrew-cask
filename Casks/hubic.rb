cask 'hubic' do
  version '2.1.0.256'
  sha256 'd6987dcb1ff767a96cf0790724b945e9ede22029e56b2d58179dcbfefb660a99'

  # mir7.ovh.net/ovh-applications/hubic was verified as official when first introduced to the cask
  url "http://mir7.ovh.net/ovh-applications/hubic/hubiC-OSX/#{version.major_minor_patch}/hubiC-OSX-#{version}-osx.pkg"
  name 'hubiC'
  homepage 'https://hubic.com/'

  pkg "hubiC-OSX-#{version}-osx.pkg"

  uninstall pkgutil: 'com.ovh.hubicmac'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ovh.hubicfinderplugin.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ovh.hubicmac.sfl*',
               '~/Library/Caches/com.ovh.hubicmac',
               '~/Library/Cookies/com.ovh.hubicmac.binarycookies',
             ]
end
