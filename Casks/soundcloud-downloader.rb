cask 'soundcloud-downloader' do
  version '2.8.1'
  sha256 '1a111b455bf1db4ef48155d23359796be73cc98805c11a6c41e9d4c0ae54d9b4'

  url "https://black-burn.ch/app/SCD2/download/#{version}"
  appcast 'https://black-burn.ch/apps/SCD2/updates/gold.xml?hwni=1',
          checkpoint: '3fb9eb44e0728da74ab85150abebc48e848b0ff515c0f69ecdfaf3ac4d284d2f'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/app/SCD2'

  app 'SoundCloud Downloader.app'
end
