cask 'bdash' do
  version '1.5.8'
  sha256 '10b9650c36e28b04bc56d5c64cb9807824fe982c739cc7bdfccab90e21449581'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
