cask 'navicat-premium' do
  version '11.2.17'
  sha256 '21790a9ea51622e730e6360feaf632f913c7488c5b17b70f79be1f336e971c5a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
