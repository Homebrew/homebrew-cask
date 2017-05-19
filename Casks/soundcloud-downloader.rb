cask 'soundcloud-downloader' do
  version '2.7.9'
  sha256 '2215a7ec8783d68cc93bdd866156692bf68bdd9be1dcfd1f3f591b83e2a3b869'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '4670f08a8ea2ab622ef3698cced08d56c630e324337cb2407f64ef479809c4a6'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
