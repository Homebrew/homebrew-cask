class Quickradar < Cask
  version '0.8.1'
  sha256 'c2a275634c9f07e9dbffe762256b8b7068562ce6ae92cfdb51fc23e5e43979e5'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          :sha256 => 'a619b28824bf188921dc93eb9d475111c0f5d68ea3ec865562d922a7c312d1f3'
  homepage 'http://www.quickradar.com/'
  license :unknown

  app 'QuickRadar.app'
end
