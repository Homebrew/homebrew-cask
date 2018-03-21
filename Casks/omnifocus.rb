cask 'omnifocus' do
  if MacOS.version <= :mavericks
    version '2.0.4'
    sha256 '3282eb7e41ec2638f68a92a6509eddd96a96c39b65b954dcedcc4e62289f22a9'
    url "https://downloads.omnigroup.com/software/MacOSX/10.9/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :yosemite
    version '2.7.4'
    sha256 'a273e55c15f82540fe305344f9e49ad7d0d9c326ba2c37c312076ffd73780f80'
    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version '2.10'
    sha256 'e808a72e60cdff9ff5aa1046d856bf62d6418e4915248816c4640e32e52fd8e8'
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"
  else
    version '2.12.1'
    sha256 '9cf156c8a96cfb47f931701efa2a395fca7ccf4baecd26f216e70b011c3c7f0f'
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniFocus#{version.major}",
          checkpoint: '2870a5fc1ba17bae60451999bc0dba8157200de9d39cb762b99c0728588261a1'
  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'

  uninstall quit: "com.omnigroup.OmniFocus#{version.major}"

  zap trash: [
               "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
               "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
               '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
               "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl*",
               '~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus',
               "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
             ]
end
