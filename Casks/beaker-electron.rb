cask 'beaker-electron' do
  version '1.4.2-0-ge55c059'
  sha256 '32d6ecf6a1ebfc32c3e1b2dfc1edb33eaeab6f83d3f9d74dd9b64e08bd24e3e6'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
