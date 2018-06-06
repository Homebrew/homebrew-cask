cask 'soundcloud-downloader' do
  version '2.8.1.2'
  sha256 '1d7dec3157b37a1a97eace31078aa16bcc4a40af62f792e3d12b53472486736c'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '436c5f6a0fd8f81c62fea8e8bffa48d5a78d27fa2214e310107d61fbf6b5c99e'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
