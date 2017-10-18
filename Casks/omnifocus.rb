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
    version '2.7.4'
    sha256 'a273e55c15f82540fe305344f9e49ad7d0d9c326ba2c37c312076ffd73780f80'
    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  else
    version '2.11.1'
    sha256 'a728caec06d17844270b243eafc0615b208d87cf4f2c6df4293e590646858acc'
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniFocus#{version.major}",
          checkpoint: '8024489488e25689fe08ec047f3f47e1f7a26e662665e6efdff66b4f074b7328'
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
