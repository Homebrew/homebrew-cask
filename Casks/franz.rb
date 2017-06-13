cask 'franz' do
  version '4.0.4'
  sha256 'a744a4e4086647ad8c982b38aae761c6a5e3a1394cb4a0d5e2c6bff8e46742cf'

  # github.com/meetfranz/franz-app was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz-app/releases.atom',
          checkpoint: '2ae578b5675bad0f5a97a3870acaedaad246e0fa61071cb63717ba1624e91201'
  name 'Franz'
  homepage 'http://meetfranz.com/'

  app 'Franz.app'
end
