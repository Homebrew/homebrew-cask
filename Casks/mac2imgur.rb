cask 'mac2imgur' do
  version '4.0'
  sha256 '7018bba2cb68f612b535dac583f987e2ecff1e3ce924e019a476cd92d90992d4'

  url "https://github.com/mileswd/mac2imgur/releases/download/#{version}/mac2imgur.zip"
  appcast 'https://mileswd.com/mac2imgur/update',
          checkpoint: '8a3f98802208b7b09cae6871983287dbbf5f64e86241ac7b6bffcc7fe9a4de95'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap delete: [
                '~/Library/Caches/com.mileswd.mac2imgur',
                '~/Library/Preferences/com.mileswd.mac2imgur.plist',
              ]
end
