cask :v1 => 'clion' do
  version '1.2.1'
  sha256 'df4eaef4a0d4cf5609025849f656e5d2e484ceb122af3dd9c5292ce55fd62d58'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion12',
                  '~/Library/Application Support/clion12',
                  '~/Library/Caches/clion12',
                  '~/Library/Logs/clion12',
                 ]
end
