cask 'ghostlab' do
  version '2.1.0'
  sha256 '522b766872578d61d9fc96defdc1cdb1be2543e7d0a8b2e41f8340f79834fb51'

  url "https://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'https://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml?vco=trkd',
          checkpoint: 'fbbb2b599c0530d37e598539aae021e627b8a8b992816dbb559af9eaf0830a94'
  name 'Ghostlab'
  homepage 'https://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
