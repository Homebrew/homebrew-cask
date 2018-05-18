cask 'bdash' do
  version '1.3.0'
  sha256 '1a1839f87759fcd08b81b332d3d6adcd40348edfd108d26f553390e5a281f188'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '6de728fe03c86ce5d485628f558e8582688accf72a5cdbbf863276e60f1b5aa5'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
