cask 'soundcloud-downloader' do
  version '2.8.2'
  sha256 'b83cded033e9fd2211171cd2bd40dfefb3e328944f81a34ec49c2a487f296b16'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '436c5f6a0fd8f81c62fea8e8bffa48d5a78d27fa2214e310107d61fbf6b5c99e'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
