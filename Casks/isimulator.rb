cask 'isimulator' do
  version '3.2.1'
  sha256 'abc66371488a1dce6fb96054cf6ff40d03c1ff4363cb650b6dd49e8cf1ce8818'

  url "https://github.com/wigl/iSimulator/releases/download/#{version}/iSimulator.zip"
  appcast 'https://github.com/wigl/iSimulator/releases.atom'
  name 'iSimulator'
  homepage 'https://github.com/wigl/iSimulator'

  app 'iSimulator.app'

  zap delete: [
                '~/Library/Application Support/niels.jin.iSimulator',
                '~/Library/Caches/niels.jin.iSimulator',
                '~/Library/Preferences/niels.jin.iSimulator.plist',
              ]
end
