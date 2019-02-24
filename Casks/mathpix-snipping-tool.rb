cask 'mathpix-snipping-tool' do
  version '1.4.0.72'
  sha256 '846d25283e5a0c2f0b6761cd99f07af4372cbaaaf9ea95a80766bad2e80cf789'

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
