cask 'framer-studio' do
  version '48'
  sha256 '1649c2768d66c0e0c45345a05f43e095852bc26a2c54bc0df7ef6b08d023bdc1'

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/cf6ed17136c869e3604eb59fc900515f',
          checkpoint: 'eff0e322f3f95c1b24f4ed014c15d9c9f91ae178c3286a669f48c1ce1da3217f'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
