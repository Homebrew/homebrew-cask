cask 'go64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.0.2'
  sha256 'f70150c4732fd556d72ed203b3a1f261fd648c56b544aa2c8817c73403f2546e'

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
