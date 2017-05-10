cask 'soundcloud-downloader' do
  version '2.7.7'
  sha256 'fa43678ebedfd71edf3ee6972f824aa5f39b55f640e011b408a6e9b69878703b'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '26e98b02b515fa664bd395dfe5ecaac54a8dba3507953bf245a3524f7099ea46'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
