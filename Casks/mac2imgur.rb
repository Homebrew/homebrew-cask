cask 'mac2imgur' do
  version 'b223'
  sha256 'b2e4dce409b2855a351beedd0151da08c7f90567cba8dd1f4f21ce02beb4f345'

  url "https://github.com/mileswd/mac2imgur/releases/download/#{version}/mac2imgur.zip"
  appcast 'https://mileswd.com/mac2imgur/update',
          checkpoint: '57c7f3e153fb500c6db3534651d4fb93c291b399c4c7578cc427b4278715963c'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'

  app 'mac2imgur.app'

  zap delete: [
                '~/Library/Caches/com.mileswd.mac2imgur',
                '~/Library/Preferences/com.mileswd.mac2imgur.plist',
              ]
end
