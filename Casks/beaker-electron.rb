cask 'beaker-electron' do
  version '1.6-0-gb7c81a9'
  sha256 'd4c41c9341fc76e07b3f7733386bdd6cdaf111ab883d11cd7f5d2fdf2a0e04d8'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
