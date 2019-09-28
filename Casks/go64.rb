cask 'go64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.0.5'
  sha256 '6cb2e323e9d5d9af63e74fc8754240527180d1b2ac501571913b13b9e728d5eb'

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
