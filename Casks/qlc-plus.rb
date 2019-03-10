cask 'qlc-plus' do
  version '4.12.1'
  sha256 '0bcab8cee13d0f09a7bdfc47f83d6be5680f18fe735dea03a2da53c123e6a13f'

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name 'Q Light Controller+'
  homepage 'https://qlcplus.org/'

  app 'QLC+.app'
end
