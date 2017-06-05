cask 'soundcloud-downloader' do
  version '2.8.0'
  sha256 'be76b5d480517713702207874626ad4453ac3be0e4629f2463286ae36b7c87ca'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '817a0ca89391c7ea806860298738bdef55ba249c414dc2b529ef2b7692897647'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
