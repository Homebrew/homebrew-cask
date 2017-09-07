cask '4k-stogram' do
  version '2.5.2.1356'
  sha256 '76d818c38d1ab294bc2b520b3a93e81fc4f5271d87d9283d8d5033904991e6a8'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'c54b263fa24e27e9adf0941a0339b323768dce5b037022ba6f44e2c632ed1051'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
