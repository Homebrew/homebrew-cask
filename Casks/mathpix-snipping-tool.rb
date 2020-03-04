cask 'mathpix-snipping-tool' do
  version '2.3.0.150'
  sha256 '622199afcbd76ad2b6f41f0cafc275a2dba6422caf11d742ed6b728f1826dfd4'

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  appcast 'https://mathpix.com/appcast.xml'
  name 'Mathpix Snipping Tool'
  homepage 'https://mathpix.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mathpix Snipping Tool.app'

  zap trash: [
               '~/Library/Application Support/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.mathpix.snipping-tool-noappstore',
               '~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist',
             ]
end
