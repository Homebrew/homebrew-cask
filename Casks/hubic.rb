cask 'hubic' do
  version '2.2.1.265'
  sha256 'b7128705a8c43a966b81e9541b1a3bd63a2e917d66f3fd46da61d3edb39d3d33'

  # mir7.ovh.net/ovh-applications/hubic was verified as official when first introduced to the cask
  url "http://mir7.ovh.net/ovh-applications/hubic/hubiC-OSX/#{version.major_minor_patch}/hubiC-OSX-#{version}-osx.pkg"
  appcast 'https://hubic.com/en/downloads'
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
