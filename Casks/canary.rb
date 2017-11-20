cask 'canary' do
  version '1.7.0,355'
  sha256 '17c934547c55c6270e273cbef1ac8d35f821f35755829ea149f909cc9476b270'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: 'da4242a274d8f4a49a2c8f9568fa709759a0c837398e79177365c910f3d1b3c9'
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
