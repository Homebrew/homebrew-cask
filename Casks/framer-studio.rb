cask 'framer-studio' do
  version '49'
  sha256 '3325beca4aeb52b48eac89226795e46eb217e2fdae85e157612b3f0bd67a680a'

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://rink.hockeyapp.net/apps/cf6ed17136c869e3604eb59fc900515f',
          checkpoint: '27ad6438867d3678dcbe0419d33c8e194bcf734d2f8969773219d6057671f90d'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
