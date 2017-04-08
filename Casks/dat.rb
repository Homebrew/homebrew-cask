cask 'dat' do
  version '1.1.1'
  sha256 '1d54dd4cd7291200d3e2f19d335c1165b2f418434793ce0eac5ff0b2e57530b6'

  # github.com/datproject/dat-desktop was verified as official when first introduced to the cask
  url "https://github.com/datproject/dat-desktop/releases/download/v#{version}/dat-desktop-#{version}-mac.zip"
  appcast 'https://github.com/datproject/dat-desktop/releases.atom',
          checkpoint: 'aef2ec37d60dfd6e42697b6187534247f02513f92c20b0f353b2dfd211a1d455'
  name 'Dat Desktop'
  homepage 'https://datproject.org/'

  app 'Dat.app'
end
