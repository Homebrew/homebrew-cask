cask 'sdspeed' do
  version '1.0.1'
  sha256 'abc2b04b38912c25ef0be5c140795704f7f59f7b9f92573ea8cae39846a9f828'

  url "http://www.flagsoft.com/cmswp/wp-content/uploads/2013/03/sdspeed-#{version}.zip"
  name 'sdspeed'
  homepage 'https://www.flagsoft.com/cmswp/en/products/sdspeed-sd-card-memory-speed-test/'

  app 'sdspeed.app'
end
