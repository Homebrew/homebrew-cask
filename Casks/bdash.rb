cask 'bdash' do
  version '1.3.0'
  sha256 '1a1839f87759fcd08b81b332d3d6adcd40348edfd108d26f553390e5a281f188'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
