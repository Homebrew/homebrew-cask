cask '4k-stogram' do
  version '2.3.2.1276'
  sha256 'ab7937cd1c47ee966fcafa1cb8a16917482157e3deae1380dd7be516998e6619'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '9fe8dcb8ad4126c3e296b842be3e03d76a8eb9957f00881354c93d663cc4e77d'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
