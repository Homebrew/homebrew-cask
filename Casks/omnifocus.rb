cask 'omnifocus' do
  if MacOS.version <= :mountain_lion
    version '1.10.6'
    sha256 'bd3aa44dced86fc3921c01f4467422a7b87a92afbd4be642ea4d4bb8b14b728c'
    url "https://downloads.omnigroup.com/software/MacOSX/10.6/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '2.0.4'
    sha256 '3282eb7e41ec2638f68a92a6509eddd96a96c39b65b954dcedcc4e62289f22a9'
    url "https://downloads.omnigroup.com/software/MacOSX/10.9/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :yosemite
    version '2.7.2'
    sha256 'bccd8d7c5698a9a3b3cee490baf9dbb6c5cf1d40a3f8fd2c69916a448cbe8b37'
    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  else
    version '2.8.2'
    sha256 '5940245ecebc17e2954e2796c756ebdc678c49af7433b31d4f87bffecc6f4e8f'
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"
  end

  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'

  if MacOS.version <= :mountain_lion
    uninstall quit: 'com.omnigroup.OmniFocus'
    zap delete: [
                  '~/Library/Application Support/OmniFocus/Plug-Ins',
                  '~/Library/Application Support/OmniFocus/Themes',
                  '~/Library/Preferences/com.omnigroup.OmniFocus.plist',
                ]
  else
    uninstall quit: 'com.omnigroup.OmniFocus2'
    zap delete: [
                  "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
                  "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
                  "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl",
                  '~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus',
                  "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
                ]
  end
end
