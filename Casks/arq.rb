cask 'arq' do
  version '5.7.3'
  sha256 '1850a7dcf31bf5f95e3ee8adbfa8e73cda51faa7eeef4df74c193ab31781d7d1'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '93d4846b8ba67dae7ec3a25ed8bb8dedb2675db89c25b4883c586ad82a461d4f'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
