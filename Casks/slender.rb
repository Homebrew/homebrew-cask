cask :v1 => 'slender' do
  version '2.1.1'
  sha256 '6235751e4510df2095ebae8e3588ed32d858d2f4612b5f020aea7efd4ff60cf0'

  url "http://downloads.dragonforged.com/slender#{version.gsub('.','')}.zip"
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender',
          :sha256 => '05b8cc1837ad290486bac9bb9c1bf194b2e2c208c968f1e55bae47ce33c56141'
  homepage 'http://dragonforged.com/slender/'
  license :unknown

  app 'Slender.app'
end
