cask 'shoes' do
  version '3.3.5'
  sha256 '57e83556ef3a9d9b4bf2c5b297ba65d0c61a7cdd83e99f532139f5a70105280f'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  appcast 'http://shoesrb.com/downloads/',
          checkpoint: 'edee7a15d206085bedc9055173c84eee4107eda61228f39f6f20eb53faea9740'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
