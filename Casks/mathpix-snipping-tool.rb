cask 'mathpix-snipping-tool' do
  version '2.0.0.94'
  sha256 '658473f87b52d3d4787208071197a4d886ca0f7d88f27c877d12e36a1a397d9d'

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
