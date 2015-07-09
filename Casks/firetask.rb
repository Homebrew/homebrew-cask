cask :v1 => 'firetask' do
  version :latest
  sha256 :no_check

  url 'http://downloads.firetask.com/firetask-mac/Firetask-Mac.dmg'
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          :sha256 => '1965e72fe7c9fbe2d64b0b1f3ce20eb45ee491739069aa128eb9d3cb57ac85d0'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :closed

  app 'Firetask.app'
end
