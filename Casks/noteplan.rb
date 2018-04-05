cask 'noteplan' do
  version '1.6.24'
  sha256 '73e208c0467561e05bb678e2019c5355b708e6460039dbfac5034b46321d5772'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380',
          checkpoint: '2f406cdb29f0a2805c86d3e05c97df8ad0eba548256d132be33a32c41e89d063'
  name 'NotePlan'
  homepage 'http://noteplan.co/'

  app 'NotePlan.app'
end
