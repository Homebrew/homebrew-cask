cask 'duet' do
  version '1.7.0.2'
  sha256 'adbb582234794fcc24f6b59eb5af1fd7962807e63b198a124ff5b33a8cfd39a6'

  # duet.nyc3.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: 'c0c43acdfb45bb85c673c36e191d16a74c46105f8bfdbb185de75bd9172b1624'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
