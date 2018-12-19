cask 'qlc-plus' do
  version '4.12.0'
  sha256 'caf2d7e13b5adac5fa8943b9fc2da7d73480ecb0003b3e309dd8b1a62e78e25e'

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name 'Q Light Controller+'
  homepage 'https://qlcplus.org/'

  app 'QLC+.app'
end
