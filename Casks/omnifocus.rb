cask :v1 => 'omnifocus' do
  if MacOS.release <= :mountain_lion
    version '1.10.6'
    sha256 'bd3aa44dced86fc3921c01f4467422a7b87a92afbd4be642ea4d4bb8b14b728c'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniFocus-#{version}.dmg"
  elsif MacOS.release <= :mavericks
    version '2.0.4'
    sha256 '3282eb7e41ec2638f68a92a6509eddd96a96c39b65b954dcedcc4e62289f22a9'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.9/OmniFocus-#{version}.dmg"
  else
    version '2.3.1'
    sha256 'd616d55aa6a4d7d5c0ceee060029728edbd670e5c82bb58fea6cf1c509209326'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  end

  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'
  license :commercial

  app 'OmniFocus.app'

  if MacOS.release <= :mountain_lion
    zap :delete => [
                    '~/Library/Application Support/OmniFocus/Plug-Ins',
                    '~/Library/Application Support/OmniFocus/Themes',
                    '~/Library/Preferences/com.omnigroup.OmniFocus.plist'
                   ]
  else
    zap :delete => [
                    '~/Library/containers/com.omnigroup.omnifocus2',
                    '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                    '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                    '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                   ]
  end
end
