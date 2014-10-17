class Iexplorer < Cask
  version '3.5.1.0'
  sha256 '3e44b39f81ca961a3c7cebd3bf7373fc80fe36591c72243ab65f273573cd9df9'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '52609c4e7c43b12f022603dc5fb2adea1a8a5a161577ae3715204ee307570f25'
  homepage 'http://www.macroplant.com/'
  license :unknown

  app 'iExplorer.app'
end
