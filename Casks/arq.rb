cask 'arq' do
  version '5.8.2'
  sha256 '05330db1edd4a5ecc22dcd056e4ecf4537d1f0806e3ff864bfceb3d459a07e77'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '86ac6149e1eab1f8229f3842cc2530b9573f989fddb828c4f7826bf638eefa54'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
