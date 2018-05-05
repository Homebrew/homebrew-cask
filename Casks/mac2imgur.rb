cask 'mac2imgur' do
  version 'b226'
  sha256 '8faeb435fcb866267fa67d4b93d5fc9fb82bcfb2e959c7fcc6f59ab15fb05ccb'

  url "https://github.com/mileswd/mac2imgur/releases/download/#{version}/mac2imgur.zip"
  appcast 'https://raw.githubusercontent.com/mileswd/mac2imgur/master/Resources/appcast.xml',
          checkpoint: 'da366727457f59fc675cf7f486ec5f1dde7b3c5c80b0caa4f327af6b069daa3d'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'

  app 'mac2imgur.app'

  zap trash: [
               '~/Library/Caches/com.mileswd.mac2imgur',
               '~/Library/Preferences/com.mileswd.mac2imgur.plist',
             ]
end
