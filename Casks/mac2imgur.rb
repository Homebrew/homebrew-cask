cask 'mac2imgur' do
  version 'b219'
  sha256 'b554d3a2083ba88451d614f243a9b599cfc546a5c0844f02f4375f703f2f60b9'

  url "https://github.com/mileswd/mac2imgur/releases/download/#{version}/mac2imgur.zip"
  appcast 'https://mileswd.com/mac2imgur/update',
          checkpoint: '76c8d74c003e2fdd4c9b2062acff9f7badb863fdab3f11c86fb745be59af3d15'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'

  app 'mac2imgur.app'

  zap delete: [
                '~/Library/Caches/com.mileswd.mac2imgur',
                '~/Library/Preferences/com.mileswd.mac2imgur.plist',
              ]
end
