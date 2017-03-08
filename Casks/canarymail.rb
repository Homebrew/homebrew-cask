cask 'canarymail' do
  version :latest
  sha256 :no_check

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/?format=zip'
  name 'Canary'
  homepage 'https://canarymail.io'

  app 'canary.app'
end
