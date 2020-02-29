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
  elsif MacOS.version <= :sierra
    version '2.12.4'
    sha256 '8a2dc53331dba804f6781773fef546a03c181fc4ff0eb7ee4f871c10342621f0'
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version '3.4.6'
    sha256 'b770b046c2c59f6e55f54d0ad822d5aa755a18aa201d333341de14ebbbcc6a85'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniFocus-#{version}.dmg"
  else
    version '3.5.1'
    sha256 'c13bed0a58f0818a884ccbd934ba5cc397c4e794084caa2810a3589ad3879039'
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniFocus-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniFocus#{version.major}"
  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'

  auto_updates true

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
