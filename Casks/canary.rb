cask 'canary' do
  version '1.7.1,367'
  sha256 '3696368498dcea6e2b26ac9a0de004357613c0ea1f89b492d10c41c7dd152be3'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: 'fbe44a32bcbe17a86a26cd7cc7c18f2688dffd99c2dc08a65795894038130ffe'
  name 'Canary'
  homepage 'https://canarymail.io/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Canary.app'

  zap trash: [
               '~/Library/Application Scripts/Sanghani.Canary',
               '~/Library/Containers/Sanghani.Canary',
             ]
end
