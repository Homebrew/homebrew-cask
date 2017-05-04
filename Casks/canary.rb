cask 'canary' do
  version '0.972.304,241'
  sha256 '4fd067a2115da6b02b332d7afec15e967c7e32e84f5eaf188c3ba18750df1ef4'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: 'd1f0430ea94f8fbcad22c6dd644bce43081bcdf536b8cb4fe14ba6360f74851c'
  name 'Canary'
  homepage 'https://canarymail.io/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Canary.app'

  zap delete: [
                '~/Library/Application Scripts/Sanghani.Canary',
                '~/Library/Containers/Sanghani.Canary',
              ]
end
