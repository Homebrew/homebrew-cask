cask 'go64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.0.1'
  sha256 '538110901c2e8ebe59a4e5df4c431139a9c02e21a4c574f61647f8bc582ef81e'

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
