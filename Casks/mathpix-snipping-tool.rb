cask 'mathpix-snipping-tool' do
  version :latest
  sha256 :no_check

  url 'https://mathpix.com/dmg/snip.dmg'
  name 'Mathpix Snipping Tool'
  homepage 'https://mathpix.com/'

  app 'Mathpix Snipping Tool.app'

  zap trash: [
               '~/Library/Application Support/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore',
               '~/Library/Caches/com.mathpix.snipping-tool-noappstore',
               '~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist',
             ]
end
