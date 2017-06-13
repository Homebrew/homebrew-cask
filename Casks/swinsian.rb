cask 'swinsian' do
  version '1.13.2'
  sha256 '7af1694f399f3e36aef148c6ed7bcb824316b10d7a761f565196a17f839e56b6'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '120c3fac361ced3d110e6e3e5a01692f0bf9fe57e6661792b62dce39571863bc'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
