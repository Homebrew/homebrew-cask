cask 'qlc-plus' do
  version '4.11.2'
  sha256 '5d8b2c17d7be7f36d5ac18cb5ebfb09c0f57cfa6d0015a71e1ae488cb65b17b0'

  url "http://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name 'Q Light Controller+'
  homepage 'http://qlcplus.org/'

  app 'QLC+.app'
end
