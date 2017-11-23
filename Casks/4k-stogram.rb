cask '4k-stogram' do
  version '2.6.2'
  sha256 '1f053da82ad48f787e84a82d48ea639ffdf2c624ff5fb88c8724361616f72654'

  url "https://dl.4kdownload.com/app/4kstogram_#{version}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'd8308646431af31e59db7ed294e4449a4f4af524c29bb0b4bff39a56a65cad3a'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
