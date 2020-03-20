cask 'mathpix-snipping-tool' do
  version '2.4.0.153'
  sha256 '38206bb1402b4931f38867699cad227ae6ab170ba88168d934caaff7b7aeb59e'

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
