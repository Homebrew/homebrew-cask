cask 'go64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.0.4'
  sha256 '3a7936c30d55c3a0d45b8df940c3a5075bfec0e9f9829ed1b849aec51e55a99e'

  url "https://www.stclairsoft.com/download/Go64-#{version}.zip"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?GO'
  name 'Go64'
  homepage 'https://www.stclairsoft.com/Go64/'

  app 'Go64.app'

  zap trash: [
               '~/Library/Saved Application State/com.stclairsoft.Go64.savedState',
               '~/Library/Application Support/com.stclairsoft.Go64',
               '~/Library/Caches/com.stclairsoft.Go64',
               '~/Library/Preferences/com.stclairsoft.Go64.plist',
             ]
end
