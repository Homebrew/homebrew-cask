cask :v1 => 'firetask' do
  version '3.7.1'
  sha256 '01dab7b4395bc3ddec7592d11d7158572a1eaa125437796a0e37d303b3ccaa8c'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          :sha256 => '1965e72fe7c9fbe2d64b0b1f3ce20eb45ee491739069aa128eb9d3cb57ac85d0'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :closed

  app "Firetask-Mac-#{version}/Firetask.app"
end
