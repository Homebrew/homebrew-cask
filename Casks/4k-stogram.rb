cask '4k-stogram' do
  version '2.3.2.1276'
  sha256 'ab7937cd1c47ee966fcafa1cb8a16917482157e3deae1380dd7be516998e6619'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '1c02cd4a525457c3267dbdaa1a313ee0e547e4d31e4352f564a57b06fa4e9bd1'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
