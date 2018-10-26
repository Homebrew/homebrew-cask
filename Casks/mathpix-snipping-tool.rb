cask 'mathpix-snipping-tool' do
  version '1.3.1.54'
  sha256 'a00fcf6e97ba758d8b586a71a5849a7a03b015a606780c054a8bc5f6f92bf9cd'

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  appcast 'https://mathpix.com/appcast.xml'
  name 'Mathpix Snipping Tool'
  homepage 'https://mathpix.com/'

  auto_updates true

  app 'Mathpix Snipping Tool.app'

  zap trash: [
               '~/Library/Application Support/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.mathpix.snipping-tool-noappstore',
               '~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist',
             ]
end
