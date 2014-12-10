cask :v1 => 'cactus' do
  version '1.1.15'
  sha256 'afde5be210ca70a4488fa5d6086a7c25a1fc74208b88a56096c4e355de4b4c37'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  homepage 'http://cactusformac.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Cactus.app'

  zap :delete => [
                  '~/Library/Caches/com.nektar.Cactus',
                  '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
                  '~/Library/Preferences/com.nektar.Cactus.plist',
                 ]
end
