cask 'noteplan' do
  version '1.6.22'
  sha256 '3ff81f6baa6bf05cd855f44f5e4a02c920abebbd2ef34a10e31a8e2bb7f1f357'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380',
          checkpoint: '0caae80a6559a75db979b162062871823576e38c83b5e8e555ada878e512f724'
  name 'NotePlan'
  homepage 'http://noteplan.co/'

  app 'NotePlan.app'
end
