cask 'soundcloud-downloader' do
  version '2.8.2'
  sha256 'b83cded033e9fd2211171cd2bd40dfefb3e328944f81a34ec49c2a487f296b16'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
