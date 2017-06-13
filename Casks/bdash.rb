cask 'bdash' do
  version '1.2.0'
  sha256 '204fa27decbda2cc356617726f5fae6356540b904b32ad47a26a3b7b1b6bc4b9'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '3c4c5ff7503686c516a3f1bc16616857bba73ef602aa59cc52c3bea5fcefd8d9'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
