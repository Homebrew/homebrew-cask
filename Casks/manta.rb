cask 'manta' do
  version '1.1.4'
  sha256 'f980f8d0c233e923a2352fd10521c1a04d059bc15140504bb7d2cfe235838776'

  # github.com/hql287/Manta was verified as official when first introduced to the cask
  url "https://github.com/hql287/Manta/releases/download/v#{version}/Manta-#{version}-mac.zip"
  appcast 'https://github.com/hql287/Manta/releases.atom',
          checkpoint: '3f155e55dd8fb01cc72353f8c98058fbde6768e198ffe02c7bb7f650823e0044'
  name 'Manta'
  homepage 'https://manta.life/'

  app 'Manta.app'
end
