cask 'framer-studio' do
  version '49'
  sha256 '1649c2768d66c0e0c45345a05f43e095852bc26a2c54bc0df7ef6b08d023bdc1'

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://rink.hockeyapp.net/apps/cf6ed17136c869e3604eb59fc900515f',
          checkpoint: '5a36995103ee49612210ed96654e9101fa64396ed4872a5f429f8b557d24a3e8'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
