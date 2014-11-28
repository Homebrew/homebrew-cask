cask :v1 => 'shiftit' do
  version '1.6'
  sha256 '538e0628d6fc99c3562694c0722cb41699d6a802f0032678ef05fa2b53711955'

  url "https://github.com/downloads/fikovnik/ShiftIt/ShiftIt-develop-#{version}.zip"
  appcast 'https://raw.github.com/fikovnik/ShiftIt/develop/release/appcast.xml',
          :sha256 => '16b9da1fa91aa964ad0fda907147d55e50da844d39a5fe5abcd0224abb954be3'
  homepage 'https://github.com/fikovnik/ShiftIt'
  license :oss

  app 'ShiftIt.app'
end
