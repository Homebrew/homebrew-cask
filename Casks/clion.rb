cask 'clion' do
  version '2016.1'
  sha256 'c791636f23c273dd07bbcab4f2495a3532501ec2ec3975c7c80cc3b915686be4'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.CLion.plist',
                "~/Library/Preferences/CLion#{version}",
                "~/Library/Application Support/CLion#{version}",
                "~/Library/Caches/CLion#{version}",
                "~/Library/Logs/CLion#{version}",
              ]
end
