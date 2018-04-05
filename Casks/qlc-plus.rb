cask 'qlc-plus' do
  version '4.11.1'
  sha256 'd34804876fbac6fa6c1a5a4310d15cbdcf1423d460a9242b8f43453da4c964ec'

  url "http://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name 'Q Light Controller+'
  homepage 'http://qlcplus.org/'

  app 'QLC+.app'
end
