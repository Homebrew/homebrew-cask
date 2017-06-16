cask '4k-stogram' do
  version '2.4.1.1296'
  sha256 'ec2b4dad2fc0ec7f46ff2d6eada87ad9fa84426e79298725b15172f84051d379'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '29846a3e3c2576f8500fe70c2df014c24e61d3b809f69e9dee980614916f56d3'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
