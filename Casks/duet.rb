cask 'duet' do
  version '2.0.4.6'
  sha256 '042f30763546362f14fa873825a7ef82664bbe217d5faa22f1fcfdf5503bb827'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.duetdisplay.com/mac/'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
